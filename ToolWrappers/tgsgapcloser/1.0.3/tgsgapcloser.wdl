version 1.0

task Tgsgapcloser {
  input {
    Boolean? sc_aff
    Boolean? reads
    Boolean? outputprefix_output_prefix
    Boolean? ne
    Boolean? pilon
    Boolean? sam_tools
    Boolean? java
    Boolean? tgs_type
    Boolean? min_id_y
    Int? min_match
    Boolean? thread
    Boolean? chunk
    Int? pilon_mem
    Boolean? p_round
    Boolean? r_round
    Boolean? g_check
    Boolean? ngs
    Boolean? rac_on
    String tgs_gap_closer
  }
  command <<<
    tgsgapcloser \
      ~{tgs_gap_closer} \
      ~{if (sc_aff) then "--scaff" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (outputprefix_output_prefix) then "--output" else ""} \
      ~{if (ne) then "--ne" else ""} \
      ~{if (pilon) then "--pilon" else ""} \
      ~{if (sam_tools) then "--samtools" else ""} \
      ~{if (java) then "--java" else ""} \
      ~{if (tgs_type) then "--tgstype" else ""} \
      ~{if (min_id_y) then "--min_idy" else ""} \
      ~{if defined(min_match) then ("--min_match " +  '"' + min_match + '"') else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (chunk) then "--chunk" else ""} \
      ~{if defined(pilon_mem) then ("--pilon_mem " +  '"' + pilon_mem + '"') else ""} \
      ~{if (p_round) then "--p_round" else ""} \
      ~{if (r_round) then "--r_round" else ""} \
      ~{if (g_check) then "--g_check" else ""} \
      ~{if (ngs) then "--ngs" else ""} \
      ~{if (rac_on) then "--racon" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sc_aff: "<scaffold_file>      the input scaffold file."
    reads: "<tgs_reads_file>     the input TGS reads file."
    outputprefix_output_prefix: "<output_prefix>      the output prefix."
    ne: "do not error correct. error correct by default."
    pilon: "<pilon>              the installed pilon."
    sam_tools: "<samtools>           the installed samtools."
    java: "<java>               the installed java."
    tgs_type: "<pb/ont>             TGS type . ont by default."
    min_id_y: "<min_idy>            min_idy for filter reads .\\n0.3 for ont by default.\\n0.2 for pb by default."
    min_match: "min match length for filter reads .\\n300bp for ont by default.\\n200bp for pb by default."
    thread: "<t_num>              thread uesd . 16 by default."
    chunk: "<chunk_num>          split candidate into chunks to error-correct separately."
    pilon_mem: "memory used for pilon , 300G for default."
    p_round: "<pilon_round>        pilon error-correction round num . 3 by default."
    r_round: "<racon_round>        racon error-correction round num . 1 by default."
    g_check: "gapsize diff check , none by default."
    ngs: ""
    rac_on: ""
    tgs_gap_closer: "--scaff SCAFF_FILE --reads TGS_READS_FILE --output OUT_PREFIX [options...]"
  }
  output {
    File out_stdout = stdout()
  }
}