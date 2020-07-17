version 1.0

task _templateScript.py {
  input {
    String? i
  }
  command <<<
    _template_script.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: "Input."
  }
}