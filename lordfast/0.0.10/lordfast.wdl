version 1.0

task Lordfast {
  input {
    String? index
  }
  command <<<
    lordfast \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    index: ""
  }
}