version 1.0

task Solvebio {
  input {
    String? api_host
    String? api_key
    Int? access_token
    String login
    String logout
    String whoami
    String tutorial
    String shell
    String import_local_file
    String create_dataset
    String upload
    String download
    String tag
    String queue
  }
  command <<<
    solvebio \
      ~{login} \
      ~{logout} \
      ~{whoami} \
      ~{tutorial} \
      ~{shell} \
      ~{import_local_file} \
      ~{create_dataset} \
      ~{upload} \
      ~{download} \
      ~{tag} \
      ~{queue} \
      ~{if defined(api_host) then ("--api-host " +  '"' + api_host + '"') else ""} \
      ~{if defined(api_key) then ("--api-key " +  '"' + api_key + '"') else ""} \
      ~{if defined(access_token) then ("--access-token " +  '"' + access_token + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/solvebio:2.15.0--pyh3252c3a_0"
  }
  parameter_meta {
    api_host: "Override the default SolveBio API host"
    api_key: "Manually provide a SolveBio API key"
    access_token: "Manually provide a SolveBio OAuth2 access token"
    login: "Login and save credentials"
    logout: "Logout and delete saved credentials"
    whoami: "Show your SolveBio email address"
    tutorial: "Show the SolveBio Python Tutorial"
    shell: "Open the SolveBio Python shell"
    import_local_file: "Import a local file into a SolveBio dataset"
    create_dataset: "Create a SolveBio dataset"
    upload: "Upload a file or directory to a SolveBio Vault"
    download: "Download one or more files from a SolveBio Vault."
    tag: "Apply tags or remove tags on objects"
    queue: "Shows the current job queue, grouped by User"
  }
  output {
    File out_stdout = stdout()
  }
}