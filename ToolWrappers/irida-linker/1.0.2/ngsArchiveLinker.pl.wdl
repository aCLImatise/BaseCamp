version 1.0

task NgsArchiveLinkerpl {
  input {
    Boolean? project_id
    Directory? directory_output_collection
    Boolean? config
    Boolean? baseurl
    Boolean? sample
    Boolean? ignore
    Boolean? rename
    Boolean? flat
    Boolean? username
    Boolean? password
    Boolean? download
    Boolean? verbose
    Directory? d
  }
  command <<<
    ngsArchiveLinker_pl \
      ~{if (project_id) then "--projectId" else ""} \
      ~{if (directory_output_collection) then "--output" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (baseurl) then "--baseURL" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (flat) then "--flat" else ""} \
      ~{if (username) then "--username" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (download) then "--download" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project_id: "[ARG]\\nThe ID of the project to get data from. (required)"
    directory_output_collection: "[ARG]\\nA directory to output the collection of links. (Default: Current\\nworking directory)"
    config: "[ARG]\\nThe location of the config file. Not required if --baseURL\\noption is used. (Default: $HOME/.irida/ngs-archive-linker.conf,\\n/etc/irida/ngs-archive-linker.conf)"
    baseurl: "[ARG]\\nThe base URL for the NGS Archive REST API. Overrides config file\\nsetting."
    sample: "[ARG]\\nA sample id to get sequence files for. Not required. Multiple\\nsamples may be listed as -s 1 -s 2 -s 3..."
    ignore: "Ignore creating links for files that already exist."
    rename: "Rename existing files with _# suffix. Useful for topup runs with\\nsimilar filenames. NOTE: This option overrides the --ignore\\noption."
    flat: "Create links or files in a flat directory under the project name\\nrather than in sample directories."
    username: "The username to use for API requests. Note: if this option is\\nnot entered it will be requested during running of the script."
    password: "The password to use for API requests. Note: if this option is\\nnot entered it will be requested during running of the script."
    download: "Option to download files from the REST API instead of\\nsoftlinking. Note: Files may be quite large. This option is not\\nrecommended if you have access to the sequencing filesystem."
    verbose: "Print verbose messages."
    d: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_collection = "${in_directory_output_collection}"
    Directory out_d = "${in_d}"
  }
}