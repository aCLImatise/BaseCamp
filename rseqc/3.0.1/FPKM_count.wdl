version 1.0

task FPKMCount.py {
  input {
    String? input_file
    String? out_prefix
    String? ref_gene
    String? strand
    Boolean? skip_multi_hits
    Boolean? only_exonic
    String? mapq
    String? single_read
  }
  command <<<
    FPKM_count.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{true="--skip-multi-hits" false="" skip_multi_hits} \
      ~{true="--only-exonic" false="" only_exonic} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(single_read) then ("--single-read " +  '"' + single_read + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM format (SAM is not supported). [required]"
    out_prefix: "Prefix of output files(s). [required]"
    ref_gene: "Reference gene model in bed fomat. [required]"
    strand: "How read(s) were stranded during sequencing. For example: --strand='1++,1--,2+-,2-+' means that this is a pair-end, strand-specific RNA-seq, and the strand rule is: read1 mapped to '+' => parental gene on '+'; read1 mapped to '-' => parental gene on '-'; read2 mapped to '+' => parental gene on '-'; read2 mapped to '-' => parental gene on '+'.  If you are not sure about the strand rule, run 'infer_experiment.py' default=none (Not a strand specific RNA-seq data)"
    skip_multi_hits: "How to deal with multiple hit reads. Presence this option renders program to skip multiple hits reads."
    only_exonic: "How to count total reads. Presence of this option renders program only used exonic (UTR exons and CDS exons) reads, otherwise use all reads."
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
    single_read: "How to count read-pairs that only have one end mapped. 0: ignore it. 0.5: treat it as half fragment. 1: treat it as whole fragment. default=1"
  }
}