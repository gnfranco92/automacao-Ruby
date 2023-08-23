describe "Buscar o usuário admin cadastrado" do
  it "Realizar a busca de usuários" do
    visit "https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers"

    fill_in "username", with: "Admin"
    fill_in "password", with: "admin123"

    click_button(class: "oxd-button oxd-button--medium oxd-button--main orangehrm-login-button")

    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input').set("BatoolNawasra")

    click_button(class: "oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space")

    sleep 5
  end
end
