version 1.0

task Stats {
  input {
    String? prefix_stats_files
    String maf_file
  }
  command <<<
    stats \
      ~{maf_file} \
      ~{if defined(prefix_stats_files) then ("-p " +  '"' + prefix_stats_files + '"') else ""}
  >>>
  parameter_meta {
    prefix_stats_files: "Prefix for output stats files [default: stats]"
    maf_file: ""
  }
}