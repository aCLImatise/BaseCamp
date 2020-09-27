version 1.0

task HpcrunnerplArchive {
  input {
    Boolean? include_paths
    String help
  }
  command <<<
    hpcrunner_pl archive \
      ~{help} \
      ~{if (include_paths) then "--include_paths" else ""}
  >>>
  parameter_meta {
    include_paths: "Include files or directories [Multiple]\\n--exclude_paths --ep  Files or directories to exclude [Multiple]\\n--archive\\n--help -h --usage -?  Prints this usage information. [Flag]"
    help: "Prints this usage information"
  }
  output {
    File out_stdout = stdout()
  }
}