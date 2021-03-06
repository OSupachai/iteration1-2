require 'spec_helper'

describe MonkeysController  do

    before :each do
		@fake_monkey = stub('double').as_null_object
		@monkey = [mock('monkey1')]
	end

    describe 'add a new job'
        it 'should render the new-job template' do
         	get :new
	        response.should render_template 'new'
	end      
        it 'should call a model method to persist data' do
			monkey = stub('new job').as_null_object
			Monkey.should_receive(:create!).and_return(monkey)

			post :create, {:monkey => monkey}
		end
		it 'should render home template' do
			monkey = stub('new job').as_null_object
			Monkey.stub(:create!).and_return(monkey)

			post :create, {:monkey => monkey}
			response.should redirect_to(monkey_path)
		end
	end

end
