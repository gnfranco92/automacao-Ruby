describe "Cadastrar novo admin" do
  # it "Realizar o login no OrangeHRM" do
  #   visit "https://opensource-demo.orangehrmlive.com/web/index.php/admin/saveSystemUser"

  #   fill_in "username", with: "Admin"
  #   fill_in "password", with: "admin123"

  #   click_button(class: "oxd-button oxd-button--medium oxd-button--main orangehrm-login-button")
  # end

  it "Preencher o formulário de cadastro" do
    visit "https://opensource-demo.orangehrmlive.com/web/index.php/admin/saveSystemUser"

    fill_in "username", with: "Admin"
    fill_in "password", with: "admin123"

    click_button(class: "oxd-button oxd-button--medium oxd-button--main orangehrm-login-button")

    # find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]').set("Admin") # User Role
    # find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]').set("Enabled") # Status
    # find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input').set("Odis  Adalwin") # Employee Name
    find(:xpath, '// * [@id = "app"] / div[1] / div[2] / div[2] / div / div / form / div[1] / div / div[4] / div / div[2] / input').set("Guilherme") # Username
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input').set("Guilherme92") # Password
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input').set("Guilherme92") # Confirm Password

    # Ações do tester necessária:
    # - Selecionar o User Role como Admin
    # - Selecionar o Status como Enabled
    # - Selecionar o Employee Name como Cecil  Bonaparte

    sleep 10

    click_button(class: "oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space")
  end
end
