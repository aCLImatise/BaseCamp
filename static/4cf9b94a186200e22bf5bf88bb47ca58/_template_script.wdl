version 1.0

task _templateScript.py {
  input {
    String iI
  }
  command <<<
    _template_script.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}