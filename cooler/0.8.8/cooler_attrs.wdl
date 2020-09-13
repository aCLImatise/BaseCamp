version 1.0

task CoolerAttrs {
  input {
    Int? level
    String uri
  }
  command <<<
    cooler attrs \
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