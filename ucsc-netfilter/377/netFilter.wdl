version 1.0

task NetFilter {
  input {
    Int? chr_restrict_query_sequence_named
    Int? not_q
    Int? chr_restrict_target_sequence_named
    Int? not_t
    String? min_score
    String? max_score
    Int? min_gap
    String? min_ali
    String? max_ali
    String? minsize_t
    String? minsize_q
    String? q_start_min
    String? q_start_max
    String? q_end_min
    String? q_end_max
    String? t_start_min
    String? t_start_max
    String? tend_min
    String? tend_max
    String? q_overlap_start
    String? q_overlap_end
    String? t_overlap_start
    String? t_overlap_end
    String? type
    Boolean? syn
    Int? min_top_score
    Int? min_syn_score
    Int? min_syn_size
    Int? min_syn_ali
    Int? max_far
    Boolean? non_syn
    Boolean? chimps_yn
    Boolean? fill
    Boolean? gap
    Boolean? line
    Boolean? no_random
    Boolean? no_hap
  }
  command <<<
    netFilter \
      ~{if defined(chr_restrict_query_sequence_named) then ("-q " +  '"' + chr_restrict_query_sequence_named + '"') else ""} \
      ~{if defined(not_q) then ("-notQ " +  '"' + not_q + '"') else ""} \
      ~{if defined(chr_restrict_target_sequence_named) then ("-t " +  '"' + chr_restrict_target_sequence_named + '"') else ""} \
      ~{if defined(not_t) then ("-notT " +  '"' + not_t + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_score) then ("-maxScore " +  '"' + max_score + '"') else ""} \
      ~{if defined(min_gap) then ("-minGap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(min_ali) then ("-minAli " +  '"' + min_ali + '"') else ""} \
      ~{if defined(max_ali) then ("-maxAli " +  '"' + max_ali + '"') else ""} \
      ~{if defined(minsize_t) then ("-minSizeT " +  '"' + minsize_t + '"') else ""} \
      ~{if defined(minsize_q) then ("-minSizeQ " +  '"' + minsize_q + '"') else ""} \
      ~{if defined(q_start_min) then ("-qStartMin " +  '"' + q_start_min + '"') else ""} \
      ~{if defined(q_start_max) then ("-qStartMax " +  '"' + q_start_max + '"') else ""} \
      ~{if defined(q_end_min) then ("-qEndMin " +  '"' + q_end_min + '"') else ""} \
      ~{if defined(q_end_max) then ("-qEndMax " +  '"' + q_end_max + '"') else ""} \
      ~{if defined(t_start_min) then ("-tStartMin " +  '"' + t_start_min + '"') else ""} \
      ~{if defined(t_start_max) then ("-tStartMax " +  '"' + t_start_max + '"') else ""} \
      ~{if defined(tend_min) then ("-tEndMin " +  '"' + tend_min + '"') else ""} \
      ~{if defined(tend_max) then ("-tEndMax " +  '"' + tend_max + '"') else ""} \
      ~{if defined(q_overlap_start) then ("-qOverlapStart " +  '"' + q_overlap_start + '"') else ""} \
      ~{if defined(q_overlap_end) then ("-qOverlapEnd " +  '"' + q_overlap_end + '"') else ""} \
      ~{if defined(t_overlap_start) then ("-tOverlapStart " +  '"' + t_overlap_start + '"') else ""} \
      ~{if defined(t_overlap_end) then ("-tOverlapEnd " +  '"' + t_overlap_end + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (syn) then "-syn" else ""} \
      ~{if defined(min_top_score) then ("-minTopScore " +  '"' + min_top_score + '"') else ""} \
      ~{if defined(min_syn_score) then ("-minSynScore " +  '"' + min_syn_score + '"') else ""} \
      ~{if defined(min_syn_size) then ("-minSynSize " +  '"' + min_syn_size + '"') else ""} \
      ~{if defined(min_syn_ali) then ("-minSynAli " +  '"' + min_syn_ali + '"') else ""} \
      ~{if defined(max_far) then ("-maxFar " +  '"' + max_far + '"') else ""} \
      ~{if (non_syn) then "-nonsyn" else ""} \
      ~{if (chimps_yn) then "-chimpSyn" else ""} \
      ~{if (fill) then "-fill" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (line) then "-line" else ""} \
      ~{if (no_random) then "-noRandom" else ""} \
      ~{if (no_hap) then "-noHap" else ""}
  >>>
  parameter_meta {
    chr_restrict_query_sequence_named: ",chr2 - restrict query side sequence to those named"
    not_q: ",chr2 - restrict query side sequence to those not named"
    chr_restrict_target_sequence_named: ",chr2 - restrict target side sequence to those named"
    not_t: ",chr2 - restrict target side sequence to those not named"
    min_score: "- restrict to those scoring at least N"
    max_score: "- restrict to those scoring less than N"
    min_gap: "- restrict to those with gap size (tSize) >= minSize"
    min_ali: "- restrict to those with at least given bases aligning"
    max_ali: "- restrict to those with at most given bases aligning"
    minsize_t: "- restrict to those at least this big on target"
    minsize_q: "- restrict to those at least this big on query"
    q_start_min: "- restrict to those with qStart at least N"
    q_start_max: "- restrict to those with qStart less than N"
    q_end_min: "- restrict to those with qEnd at least N"
    q_end_max: "- restrict to those with qEnd less than N"
    t_start_min: "- restrict to those with tStart at least N"
    t_start_max: "- restrict to those with tStart less than N"
    tend_min: "- restrict to those with tEnd at least N"
    tend_max: "- restrict to those with tEnd less than N"
    q_overlap_start: "- restrict to those where the query overlaps a region starting here"
    q_overlap_end: "- restrict to those where the query overlaps a region ending here"
    t_overlap_start: "- restrict to those where the target overlaps a region starting here"
    t_overlap_end: "- restrict to those where the target overlaps a region ending here"
    type: "- restrict to given type, maybe repeated to allow several types"
    syn: "- do filtering based on synteny (tuned for human/mouse)."
    min_top_score: "- Minimum score for top level alignments. default 300000"
    min_syn_score: "- Min syntenic block score (def=200,000).\\nDefault covers 27,000 bases including 9,000\\naligning--a very stringent requirement."
    min_syn_size: "- Min syntenic block size (def=20,000). -"
    min_syn_ali: "- Min syntenic alignment size(def=10,000). -"
    max_far: "- Max distance to allow synteny (def=200,000)."
    non_syn: "- do inverse filtering based on synteny (tuned for human/mouse)."
    chimps_yn: "- do filtering based on synteny (tuned for human/chimp)."
    fill: "- Only pass fills, not gaps. Only useful with -line."
    gap: "- Only pass gaps, not fills. Only useful with -line."
    line: "- Do this a line at a time, not recursing"
    no_random: "- suppress chains involving 'random' chromosomes"
    no_hap: "- suppress chains involving chromosome names inc '_hap|_alt'"
  }
  output {
    File out_stdout = stdout()
  }
}