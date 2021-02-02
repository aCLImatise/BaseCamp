version 1.0

task ChainFilter {
  input {
    Int? chr_restrict_query_sequence_named
    Int? not_q
    Int? chr_restrict_target_sequence_named
    Int? not_t
    Int? id
    String? min_score
    String? max_score
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
    Boolean? strand
    Boolean? long
    Boolean? zero_gap
    String? min_gapless
    Int? qm_in_gap
    Int? tm_in_gap
    Int? qmax_gap
    Int? tmax_gap
    Int? qm_in_size
    Int? q_maxsize
    Int? tm_in_size
    Int? tmax_size
    Boolean? no_random
    Boolean? no_hap
  }
  command <<<
    chainFilter \
      ~{if defined(chr_restrict_query_sequence_named) then ("-q " +  '"' + chr_restrict_query_sequence_named + '"') else ""} \
      ~{if defined(not_q) then ("-notQ " +  '"' + not_q + '"') else ""} \
      ~{if defined(chr_restrict_target_sequence_named) then ("-t " +  '"' + chr_restrict_target_sequence_named + '"') else ""} \
      ~{if defined(not_t) then ("-notT " +  '"' + not_t + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_score) then ("-maxScore " +  '"' + max_score + '"') else ""} \
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
      ~{if (strand) then "-strand" else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if (zero_gap) then "-zeroGap" else ""} \
      ~{if defined(min_gapless) then ("-minGapless " +  '"' + min_gapless + '"') else ""} \
      ~{if defined(qm_in_gap) then ("-qMinGap " +  '"' + qm_in_gap + '"') else ""} \
      ~{if defined(tm_in_gap) then ("-tMinGap " +  '"' + tm_in_gap + '"') else ""} \
      ~{if defined(qmax_gap) then ("-qMaxGap " +  '"' + qmax_gap + '"') else ""} \
      ~{if defined(tmax_gap) then ("-tMaxGap " +  '"' + tmax_gap + '"') else ""} \
      ~{if defined(qm_in_size) then ("-qMinSize " +  '"' + qm_in_size + '"') else ""} \
      ~{if defined(q_maxsize) then ("-qMaxSize " +  '"' + q_maxsize + '"') else ""} \
      ~{if defined(tm_in_size) then ("-tMinSize " +  '"' + tm_in_size + '"') else ""} \
      ~{if defined(tmax_size) then ("-tMaxSize " +  '"' + tmax_size + '"') else ""} \
      ~{if (no_random) then "-noRandom" else ""} \
      ~{if (no_hap) then "-noHap" else ""}
  >>>
  parameter_meta {
    chr_restrict_query_sequence_named: ",chr2 - restrict query side sequence to those named"
    not_q: ",chr2 - restrict query side sequence to those not named"
    chr_restrict_target_sequence_named: ",chr2 - restrict target side sequence to those named"
    not_t: ",chr2 - restrict target side sequence to those not named"
    id: "- only get one with ID number matching N"
    min_score: "- restrict to those scoring at least N"
    max_score: "- restrict to those scoring less than N"
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
    strand: "=?    -restrict strand (to + or -)"
    long: "-output in long format"
    zero_gap: "-get rid of gaps of length zero"
    min_gapless: "- pass those with minimum gapless block of at least N"
    qm_in_gap: "- pass those with minimum gap size of at least N"
    tm_in_gap: "- pass those with minimum gap size of at least N"
    qmax_gap: "- pass those with maximum gap size no larger than N"
    tmax_gap: "- pass those with maximum gap size no larger than N"
    qm_in_size: "- minimum size of spanned query region"
    q_maxsize: "- maximum size of spanned query region"
    tm_in_size: "- minimum size of spanned target region"
    tmax_size: "- maximum size of spanned target region"
    no_random: "- suppress chains involving '_random' chromosomes"
    no_hap: "- suppress chains involving '_hap|_alt' chromosomes"
  }
  output {
    File out_stdout = stdout()
  }
}