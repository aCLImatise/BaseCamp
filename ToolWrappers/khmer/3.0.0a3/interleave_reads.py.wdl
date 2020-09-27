version 1.0

task Interleavereadspy {
  input {
    File? o
    Boolean? info
    String var_left
  }
  command <<<
    interleave_reads_py \
      ~{var_left} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    o: ""
    info: ""
    var_left: "right"
  }
  output {
    File out_stdout = stdout()
  }
}