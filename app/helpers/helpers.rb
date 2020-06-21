class Helpers
    def self.current_user(session)
        @user = User.find(session[:user_id])
        @user
        binding.pry
    end


    def self.is_logged_in?(session)
      @user = User.find(session[:user_id]) 
      @user.id == session[:user_id]
    
    end
end