version 1.0

task FilterReadspl {
  input {
    String? out
    String? ref
    Int? two
    Int? one
  }
  command <<<
    filter_reads_pl \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/novoplasty:4.2--pl526_0"
  }
  parameter_meta {
    out: ""
    ref: ""
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}