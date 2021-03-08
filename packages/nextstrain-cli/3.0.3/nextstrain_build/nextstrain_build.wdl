version 1.0

task NextstrainBuild {
  input {
    Boolean? help_all
    Boolean? detach
    String? attach
    Int? cpus
    Int? memory
    File? download
    Boolean? no_download
    Directory directory
  }
  command <<<
    nextstrain build \
      ~{directory} \
      ~{if (help_all) then "--help-all" else ""} \
      ~{if (detach) then "--detach" else ""} \
      ~{if defined(attach) then ("--attach " +  '"' + attach + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if (no_download) then "--no-download" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    help_all: "Show a full help message of all options and exit"
    detach: "Run the build in the background, detached from your\\nterminal. Re-attach later using --attach. Currently\\nonly supported when also using --aws-batch. (default:\\nFalse)"
    attach: "Re-attach to a --detach'ed build to view output and\\ndownload results. Currently only supported when also\\nusing --aws-batch. (default: None)"
    cpus: "Number of CPUs/cores/threads/jobs to utilize at once.\\nLimits containerized (Docker, AWS Batch) builds to\\nthis amount. Informs Snakemake's resource scheduler\\nwhen applicable. Informs the AWS Batch instance size\\nselection. (default: None)"
    memory: "Amount of memory to make available to the build. Units\\nof b, kb, mb, gb, kib, mib, gib are supported. Limits\\ncontainerized (Docker, AWS Batch) builds to this\\namount. Informs Snakemake's resource scheduler when\\napplicable. Informs the AWS Batch instance size\\nselection. (default: None)"
    download: "Only download new or modified files matching <pattern>\\nfrom the remote build. Basic shell-style globbing is\\nsupported, but be sure to escape wildcards or quote\\nthe whole pattern so your shell doesn't expand them.\\nMay be passed more than once. Currently only supported\\nwhen also using --aws-batch. Default is to download\\nevery new or modified file."
    no_download: "Do not download any files from the remote build when\\nit completes. Currently only supported when also using\\n--aws-batch."
    directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}