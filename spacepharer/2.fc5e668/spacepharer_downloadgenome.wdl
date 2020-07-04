version 1.0

task SpacepharerDownloadgenome {
  input {
    Int? reverse_set_db
    Int? verbosity_level_errors
    String name_slash_download_file
  }
  command <<<
    spacepharer downloadgenome \
      ~{name_slash_download_file} \
      ~{if defined(reverse_set_db) then ("--reverse-setdb " +  '"' + reverse_set_db + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  parameter_meta {
    reverse_set_db: "Create additional setDB with reversed fragments to compute under null [0,1] [1]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    name_slash_download_file: ""
  }
}