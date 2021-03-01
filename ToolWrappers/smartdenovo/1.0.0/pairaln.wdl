version 1.0

task Pairaln {
  input {
    Boolean? try_both_strands
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Boolean? output_alignment
    String a_aggcc_tt
    String aag_cctt
  }
  command <<<
    pairaln \
      ~{a_aggcc_tt} \
      ~{aag_cctt} \
      ~{if (try_both_strands) then "-s" else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion) then ("-O " +  '"' + alignment_penalty_insertion + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{if (output_alignment) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    try_both_strands: "Try both strands"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion: "Alignment penalty: insertion or deletion, [-3]"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping, 0: distable HSP extension, otherwise set to -100 or other [-100]"
    output_alignment: "Output alignment"
    a_aggcc_tt: ">read2"
    aag_cctt: "and so on, read3, read4, ..."
  }
  output {
    File out_stdout = stdout()
  }
}