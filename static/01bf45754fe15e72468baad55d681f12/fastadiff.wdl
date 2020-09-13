version 1.0

task Fastadiff {
  input {
    Boolean? help
    File? first
    File? second
    Boolean? ignorecase
    Boolean? ambiguity
    Boolean? check_ids
  }
  command <<<
    fastadiff \
      ~{if (help) then "--help" else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(second) then ("--second " +  '"' + second + '"') else ""} \
      ~{if (ignorecase) then "--ignorecase" else ""} \
      ~{if (ambiguity) then "--ambiguity" else ""} \
      ~{if (check_ids) then "--checkids" else ""}
  >>>
  parameter_meta {
    help: ""
    first: ""
    second: ""
    ignorecase: ""
    ambiguity: ""
    check_ids: ""
  }
  output {
    File out_stdout = stdout()
  }
}