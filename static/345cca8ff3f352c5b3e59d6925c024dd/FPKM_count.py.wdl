version 1.0

task FPKMCountpy {
  input {
    File? input_file
    String? out_prefix
    String? ref_gene
    Int? strand
    Boolean? skip_multi_hits
    Boolean? only_exonic
    Int? mapq
    Float? single_read
  }
  command <<<
    FPKM_count_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (skip_multi_hits) then "--skip-multi-hits" else ""} \
      ~{if (only_exonic) then "--only-exonic" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(single_read) then ("--single-read " +  '"' + single_read + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_file: "Alignment file in BAM format (SAM is not supported).\\n[required]"
    out_prefix: "Prefix of output files(s). [required]"
    ref_gene: "Reference gene model in bed fomat. [required]"
    strand: "How read(s) were stranded during sequencing. For\\nexample: --strand='1++,1--,2+-,2-+' means that this is\\na pair-end, strand-specific RNA-seq, and the strand\\nrule is: read1 mapped to '+' => parental gene on '+';\\nread1 mapped to '-' => parental gene on '-'; read2\\nmapped to '+' => parental gene on '-'; read2 mapped to\\n'-' => parental gene on '+'.  If you are not sure\\nabout the strand rule, run 'infer_experiment.py'\\ndefault=none (Not a strand specific RNA-seq data)"
    skip_multi_hits: "How to deal with multiple hit reads. Presence this\\noption renders program to skip multiple hits reads."
    only_exonic: "How to count total reads. Presence of this option\\nrenders program only used exonic (UTR exons and CDS\\nexons) reads, otherwise use all reads."
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30"
    single_read: "How to count read-pairs that only have one end mapped.\\n0: ignore it. 0.5: treat it as half fragment. 1: treat\\nit as whole fragment. default=1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}