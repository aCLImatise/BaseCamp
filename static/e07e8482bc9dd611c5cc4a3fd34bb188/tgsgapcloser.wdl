version 1.0

task Tgsgapcloser {
  input {
    Boolean? sc_aff
    Boolean? reads
    Boolean? outputprefix_output_prefix
    Boolean? ngs
    Boolean? pilon
    Boolean? sam_tools
    Boolean? java
    Boolean? tgs_type
    Boolean? min_id_y
    Int? min_match
    Boolean? thread
    Boolean? chunk
    String? pilon_mem
    Boolean? p_round
    Boolean? r_round
    Boolean? g_check
    String? options_dot_dot_dot
  }
  command <<<
    tgsgapcloser \
      ~{options_dot_dot_dot} \
      ~{true="--scaff" false="" sc_aff} \
      ~{true="--reads" false="" reads} \
      ~{true="--output" false="" outputprefix_output_prefix} \
      ~{true="--ngs" false="" ngs} \
      ~{true="--pilon" false="" pilon} \
      ~{true="--samtools" false="" sam_tools} \
      ~{true="--java" false="" java} \
      ~{true="--tgstype" false="" tgs_type} \
      ~{true="--min_idy" false="" min_id_y} \
      ~{if defined(min_match) then ("--min_match " +  '"' + min_match + '"') else ""} \
      ~{true="--thread" false="" thread} \
      ~{true="--chunk" false="" chunk} \
      ~{if defined(pilon_mem) then ("--pilon_mem " +  '"' + pilon_mem + '"') else ""} \
      ~{true="--p_round" false="" p_round} \
      ~{true="--r_round" false="" r_round} \
      ~{true="--g_check" false="" g_check}
  >>>
  parameter_meta {
    sc_aff: "<scaffold_file>      the input scaffold file."
    reads: "<tgs_reads_file>     the input TGS reads file."
    outputprefix_output_prefix: "<output_prefix>      the output prefix."
    ngs: "<ngs_reads>          the ngs reads used for pilon"
    pilon: "<pilon>              the installed pilon."
    sam_tools: "<samtools>           the installed samtools."
    java: "<java>               the installed java."
    tgs_type: "<pb/ont>             TGS type . ont by default."
    min_id_y: "<min_idy>            min_idy for filter reads . 0.3 for ont by default. 0.2 for pb by default."
    min_match: "min match length for filter reads . 300bp for ont by default. 200bp for pb by default."
    thread: "<t_num>              thread uesd . 16 by default."
    chunk: "<chunk_num>          split candidate into chunks to error-correct separately."
    pilon_mem: "memory used for pilon , 300G for default."
    p_round: "<pilon_round>        pilon error-correction round num . 3 by default."
    r_round: "<racon_round>        racon error-correction round num . 1 by default."
    g_check: "gapsize diff check , none by default."
    options_dot_dot_dot: ""
  }
}