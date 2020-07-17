version 1.0

task CollapseIsoformsBySam.py {
  input {
    String? input_fafq_filename
    Boolean? fq
    String? sam
    String? prefix
    Int? min_coverage
    Int? min_identity
    Int? max_fuzzy_junction
    Int? max_five_diff
    Int? max_three_diff
    String? fl_nc_coverage
    Boolean? dun_merge_five_shorter
  }
  command <<<
    collapse_isoforms_by_sam.py \
      ~{if defined(input_fafq_filename) then ("--input " +  '"' + input_fafq_filename + '"') else ""} \
      ~{true="--fq" false="" fq} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_fuzzy_junction) then ("--max_fuzzy_junction " +  '"' + max_fuzzy_junction + '"') else ""} \
      ~{if defined(max_five_diff) then ("--max_5_diff " +  '"' + max_five_diff + '"') else ""} \
      ~{if defined(max_three_diff) then ("--max_3_diff " +  '"' + max_three_diff + '"') else ""} \
      ~{if defined(fl_nc_coverage) then ("--flnc_coverage " +  '"' + fl_nc_coverage + '"') else ""} \
      ~{true="--dun-merge-5-shorter" false="" dun_merge_five_shorter}
  >>>
  parameter_meta {
    input_fafq_filename: "Input FA/FQ filename"
    fq: "Input is a fastq file (default is fasta)"
    sam: "Sorted GMAP SAM filename"
    prefix: "Output filename prefix"
    min_coverage: "Minimum alignment coverage (default: 0.99)"
    min_identity: "Minimum alignment identity (default: 0.95)"
    max_fuzzy_junction: "Max fuzzy junction dist (default: 5 bp)"
    max_five_diff: "Maximum allowed 5' difference if on same exon (default: 1000 bp)"
    max_three_diff: "Maximum allowed 3' difference if on same exon (default: 100 bp)"
    fl_nc_coverage: "Minimum # of FLNC reads, only use this for aligned FLNC reads, otherwise results undefined!"
    dun_merge_five_shorter: "Don't collapse shorter 5' transcripts (default: turned off)"
  }
}