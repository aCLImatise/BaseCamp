version 1.0

task PbsDecode {
  input {
    String? start
    String? end
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
      ~{true="--discard-gaps" false="" discard_gaps}
  >>>
  parameter_meta {
    start: "Decode only the subsequence starting at position <sidx>. Indexing starts with 1."
    end: "Decode only the subsequence ending at position <eidx>. Indexing starts with 1."
    discard_gaps: "Do not report gaps in the PBS.  "
    input_dot_bin: ""
    code_file: ""
  }
}