version 1.0

task JunctionSaturation.py {
  input {
    String? input_file
    String? out_prefix
    String? ref_gene
    String? percentile_floor
    String? percentile_ceiling
    String? percentile_step
    Int? min_intron
    Int? min_coverage
    String? mapq
  }
  command <<<
    junction_saturation.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(percentile_floor) then ("--percentile-floor " +  '"' + percentile_floor + '"') else ""} \
      ~{if defined(percentile_ceiling) then ("--percentile-ceiling " +  '"' + percentile_ceiling + '"') else ""} \
      ~{if defined(percentile_step) then ("--percentile-step " +  '"' + percentile_step + '"') else ""} \
      ~{if defined(min_intron) then ("--min-intron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format.[required]"
    out_prefix: "Prefix of output files(s). [required]"
    ref_gene: "Reference gene model in bed fomat. This gene model is used to determine known splicing junctions. [required]"
    percentile_floor: "Sampling starts from this percentile. A integer between 0 and 100. default=5"
    percentile_ceiling: "Sampling ends at this percentile. A integer between 0 and 100. default=100"
    percentile_step: "Sampling frequency. Smaller value means more sampling times. A integer between 0 and 100. default=5"
    min_intron: "Minimum intron size (bp). default=50"
    min_coverage: "Minimum number of supportting reads to call a junction. default=1"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
  }
}