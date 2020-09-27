version 1.0

task CoolerTree {
  input {
    Int? level
    String uri
  }
  command <<<
    cooler tree \
      ~{uri} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  parameter_meta {
    level: "-h, --help           Show this message and exit.\\n"
    uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}