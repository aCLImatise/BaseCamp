version 1.0

task SVcomp {
  input {
    File? first
    File? ref
  }
  command <<<
    SVcomp \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    first: ""
    ref: ""
  }
  output {
    File out_stdout = stdout()
  }
}