module AuthHelper
  def authenticate
    username = "admin"
    password = "secret"

    if page.driver.browser.respond_to?(:authorize)
      page.driver.browser.authorize(username,password)
    else
      visit "http://#{username}: #{password}@#{host}:#{port}/"
    end
  end
  def host
    Capybora.current_session.server.host
  end

  def port
    Capybora.current_session.server.port
  end
end