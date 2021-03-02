version 1.0

task HpcrunnerplArchive {
  input {
    Boolean? include_paths
    Boolean? exclude_paths
    String help
  }
  command <<<
    hpcrunner_pl archive \
      ~{help} \
      ~{if (include_paths) then "--include_paths" else ""} \
      ~{if (exclude_paths) then "--exclude_paths" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include_paths: "Include files or directories [Multiple]"
    exclude_paths: "Files or directories to exclude [Multiple]"
    help: "Prints this usage information"
  }
  output {
    File out_stdout = stdout()
  }
}