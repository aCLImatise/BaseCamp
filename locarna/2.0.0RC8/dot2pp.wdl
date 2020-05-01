version 1.0

task Dot2pp {
  input {
    String manMan
    String nameName
    String? inInFiledPPs
    String? outfileOutfilePp
  }
  command <<<
    dot2pp \
      ~{inInFiledPPs} \
      ~{if defined(manMan) then ("--man " +  '"' + manMan + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{outfileOutfilePp}
  >>>
}