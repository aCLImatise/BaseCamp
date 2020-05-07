version 1.0

task Solvebio {
  input {
    String apiApiHost
    String apiApiKey
    String accessAccessToken
    String? loginLogin
    String? logoutLogout
    String? whoamiWhoami
    String? tutorialTutorial
    String? shellShell
    String? importImport
    String? createCreateDataset
    String? uploadUpload
    String? downloadDownload
    String? tagTag
    String? queueQueue
  }
  command <<<
    solvebio \
      ~{loginLogin} \
      ~{if defined(apiApiHost) then ("--api-host " +  '"' + apiApiHost + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api-key " +  '"' + apiApiKey + '"') else ""} \
      ~{if defined(accessAccessToken) then ("--access-token " +  '"' + accessAccessToken + '"') else ""} \
      ~{logoutLogout} \
      ~{whoamiWhoami} \
      ~{tutorialTutorial} \
      ~{shellShell} \
      ~{importImport} \
      ~{createCreateDataset} \
      ~{uploadUpload} \
      ~{downloadDownload} \
      ~{tagTag} \
      ~{queueQueue}
  >>>
}