version 1.0

task RPKMSaturationpy {
  input {
    File? input_file
    String? out_prefix
    String? ref_gene
    Int? strand
    Int? percentile_floor
    Int? percentile_ceiling
    Int? percentile_step
    Int? rp_km_cut_off
    Int? mapq
  }
  command <<<
    RPKM_saturation_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(percentile_floor) then ("--percentile-floor " +  '"' + percentile_floor + '"') else ""} \
      ~{if defined(percentile_ceiling) then ("--percentile-ceiling " +  '"' + percentile_ceiling + '"') else ""} \
      ~{if defined(percentile_step) then ("--percentile-step " +  '"' + percentile_step + '"') else ""} \
      ~{if defined(rp_km_cut_off) then ("--rpkm-cutoff " +  '"' + rp_km_cut_off + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. [required]"
    out_prefix: "Prefix of output files(s). [required]"
    ref_gene: "Reference gene model in bed fomat. [required]"
    strand: "How read(s) were stranded during sequencing. For\\nexample: --strand='1++,1--,2+-,2-+' means that this is\\na pair-end, strand-specific RNA-seq, and the strand\\nrule is: read1 mapped to '+' => parental gene on '+';\\nread1 mapped to '-' => parental gene on '-'; read2\\nmapped to '+' => parental gene on '-'; read2 mapped to\\n'-' => parental gene on '+'.  If you are not sure\\nabout the strand rule, run 'infer_experiment.py'\\ndefault=none (Not a strand specific RNA-seq data)"
    percentile_floor: "Sampling starts from this percentile. A integer\\nbetween 0 and 100. default=5"
    percentile_ceiling: "Sampling ends at this percentile. A integer between 0\\nand 100. default=100"
    percentile_step: "Sampling frequency. Smaller value means more sampling\\ntimes. A integer between 0 and 100. default=5"
    rp_km_cut_off: "Transcripts with RPKM smaller than this number will be\\nignored in visualization plot. default=0.01"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}