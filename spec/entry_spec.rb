require_relative '../models/entry'

RSpec.describe Entry do
    describe 'attributes' do
        let(:entry) { Entry.new('Brian Mont', '201.707.3742', 'briansmont830@gmail.com') }
        
        it "responds to name" do
            expect(entry).to respond_to(:name)
        end
        
        it "reports its name" do
            expect(entry.name).to eq('Brian Mont')
        end
        
        it "responds to phone number" do
            expect(entry).to respond_to(:phone_number)
        end
        
        it "reports its phone_number" do
            expect(entry.phone_number).to eq('201.707.3742')
        end
        
        it "responds to email" do
            expect(entry).to respond_to(:email)
        end
        
        it "reports its email" do
            expect(entry.email).to eq('briansmont830@gmail.com')
        end
    end
    
    describe "#to_s" do
       it "prints an entry as a string" do
           entry = Entry.new('Brian Mont', '201.707.3742', 'briansmont830@gmail.com')
           expected_string = "Name: Brian Mont\nPhone Number: 201.707.3742\nEmail: briansmont830@gmail.com"
            
            expect(entry.to_s).to eq(expected_string)
       end
       
    end
end