version 1.0

task TOBIASDownloadData {
  input {
    Boolean? endpoint
    Boolean? bucket
    Boolean? patterns
    Boolean? username
    Boolean? key
    Boolean? yaml
    Boolean? force
    Int? verbosity
  }
  command <<<
    TOBIAS DownloadData \
      ~{if (endpoint) then "--endpoint" else ""} \
      ~{if (bucket) then "--bucket" else ""} \
      ~{if (patterns) then "--patterns" else ""} \
      ~{if (username) then "--username" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (yaml) then "--yaml" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    endpoint: "Link to the s3 server (default: The loosolab s3 server)"
    bucket: "Name of bucket to download (default: data-tobias-2020)"
    patterns: "List of patterns for files to download e.g. '*.txt' (default: *)"
    username: "Username for endpoint (default: None set)"
    key: "Access key for endpoint (default: None set)"
    yaml: "Set the endpoint/bucket/access information through a config file in\\n.yaml format (NOTE: overwrites commandline arguments)"
    force: "Force download of already existing files (default: warn and skip)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\\nstats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}