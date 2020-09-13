version 1.0

task PslReps {
  input {
    Boolean? no_head
    Boolean? ignore_size
    Boolean? no_introns
    Boolean? single_hit
    Int? min_cover
    Boolean? ignore_ns
    Int? min_ali
    Int? near_top
    Int? min_near_top_size
    File? cover_q_sizes
    String in_dot_psl
    String out_dot_psl
  }
  command <<<
    pslReps \
      ~{in_dot_psl} \
      ~{out_dot_psl} \
      ~{if (no_head) then "-nohead" else ""} \
      ~{if (ignore_size) then "-ignoreSize" else ""} \
      ~{if (no_introns) then "-noIntrons" else ""} \
      ~{if (single_hit) then "-singleHit" else ""} \
      ~{if defined(min_cover) then ("-minCover " +  '"' + min_cover + '"') else ""} \
      ~{if (ignore_ns) then "-ignoreNs" else ""} \
      ~{if defined(min_ali) then ("-minAli " +  '"' + min_ali + '"') else ""} \
      ~{if defined(near_top) then ("-nearTop " +  '"' + near_top + '"') else ""} \
      ~{if defined(min_near_top_size) then ("-minNearTopSize " +  '"' + min_near_top_size + '"') else ""} \
      ~{if defined(cover_q_sizes) then ("-coverQSizes " +  '"' + cover_q_sizes + '"') else ""}
  >>>
  parameter_meta {
    no_head: "Don't add PSL header."
    ignore_size: "Will not weigh as much in favor of larger alignments."
    no_introns: "Will not penalize for not having introns when calculating\\nsize factor."
    single_hit: "Takes single best hit, not splitting into parts."
    min_cover: "Minimum coverage to output.  Default is 0."
    ignore_ns: "Ignore Ns when calculating minCover."
    min_ali: "Minimum alignment ratio.  Default is 0.93."
    near_top: "How much can deviate from top and be taken.\\nDefault is 0.01."
    min_near_top_size: "Minimum size of alignment that is near top\\nfor alignment to be kept.  Default 30."
    cover_q_sizes: "Tab-separate file with effective query sizes.\\nWhen used with -minCover, this allows polyAs\\nto be excluded from the coverage calculation.\\n"
    in_dot_psl: ""
    out_dot_psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}