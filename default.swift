

extension AppDelegate {
    fileprivate func addBDefaultRepos() {
        if !Preferences.bDefaultRepos {
            CoreDataManager.shared.saveSource(
                name: "Feather Beta Repository",
                id: "kh.crysalis.feather-repo.beta",
                iconURL: URL(string: "https://raw.githubusercontent.com/khcrysalis/Feather/refs/heads/main/Images/feather_beta.png"),
                url: "https://raw.githubusercontent.com/ssalggnikool/.github/refs/heads/main/featherbeta-2nui218.json")
            {_ in
                Debug.shared.log(message: "Added beta default repos!")
                Preferences.bDefaultRepos = true
            }
        }
    }
}