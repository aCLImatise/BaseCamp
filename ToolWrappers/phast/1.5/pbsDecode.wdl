version 1.0

task PbsDecode {
  input {
    Int? start
    Int? end
    Boolean? discard_gaps
    String input_dot_bin
    String code_file
  }
  command <<<
    pbsDecode \
      ~{input_dot_bin} \
      ~{code_file} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (discard_gaps) then "--discard-gaps" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start: "Decode only the subsequence starting at position <sidx>.\\nIndexing starts with 1."
    end: "Decode only the subsequence ending at position <eidx>.\\nIndexing starts with 1."
    discard_gaps: "Do not report gaps in the PBS."
    input_dot_bin: ""
    code_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}