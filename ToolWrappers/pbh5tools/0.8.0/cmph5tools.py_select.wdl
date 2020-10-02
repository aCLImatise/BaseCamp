version 1.0

task Cmph5toolspySelect {
  input {
    Array[String] idx_s
    Int? outfile
    Int input_dot_cmp_doth_five
  }
  command <<<
    cmph5tools_py select \
      ~{input_dot_cmp_doth_five} \
      ~{if defined(idx_s) then ("--idxs " +  '"' + idx_s + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    idx_s: ""
    outfile: ""
    input_dot_cmp_doth_five: "Create a new cmp.h5 file by selecting alignments. Users can specify indices"
  }
  output {
    File out_stdout = stdout()
  }
}