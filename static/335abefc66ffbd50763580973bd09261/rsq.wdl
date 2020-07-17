version 1.0

task Rsq {
  input {
    String? i
  }
  command <<<
    rsq \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
  }
}