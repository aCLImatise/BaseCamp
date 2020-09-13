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
    level: ""
    uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}