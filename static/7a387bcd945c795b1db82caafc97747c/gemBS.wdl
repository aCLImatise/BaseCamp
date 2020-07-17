version 1.0

task GemBS {
  input {
    String? loglevel
    String? json_file
    String? dir
    Boolean? v
  }
  command <<<
    gemBS \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(json_file) then ("--json-file " +  '"' + json_file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    loglevel: "Log level (error, warn, info, debug)"
    json_file: "Location of gemBS JSON file"
    dir: "Set working directory"
    v: ""
  }
}