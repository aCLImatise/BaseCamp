version 1.0

task VarifierMakeTruthVcf {
  input {
    Int? max_recall_ref_len
    Int? flank_length
    File? truth_mask
    Boolean? split_ref
    Boolean? no_max_match
    Int? cpus
    String truth_fast_a
    String ref_fast_a
    String outdir
  }
  command <<<
    varifier make_truth_vcf \
      ~{truth_fast_a} \
      ~{ref_fast_a} \
      ~{outdir} \
      ~{if defined(max_recall_ref_len) then ("--max_recall_ref_len " +  '"' + max_recall_ref_len + '"') else ""} \
      ~{if defined(flank_length) then ("--flank_length " +  '"' + flank_length + '"') else ""} \
      ~{if defined(truth_mask) then ("--truth_mask " +  '"' + truth_mask + '"') else ""} \
      ~{if (split_ref) then "--split_ref" else ""} \
      ~{if (no_max_match) then "--no_maxmatch" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varifier:0.3.1--pyhdfd78af_0"
  }
  parameter_meta {
    max_recall_ref_len: "Do not include variants where REF length is more than\\nthis number. Default is no limit"
    flank_length: "Length of sequence to add either side of variant when\\nmaking probe sequences [100]"
    truth_mask: "BED file of truth genome regions to mask. Any variants\\nin the VCF matching to the mask are flagged and will\\nnot count towards precision or recall if the output\\nVCF is used with vcf_eval"
    split_ref: "When using MUMmer, split the ref genome into one file\\nper sequence, and run MUMmer on each split.\\nExperimental - should improve run time for big genomes"
    no_max_match: "When using nucmer to get expected calls for recall, do\\nnot use the --maxmatch option. May reduce sensitivity\\nto finding all variants"
    cpus: "Number of CPUs to use when running nucmer and minimap2\\n[1]\\n"
    truth_fast_a: "FASTA file of truth genome"
    ref_fast_a: "FASTA file of reference genome"
    outdir: "Name of output directory"
  }
  output {
    File out_stdout = stdout()
    File out_truth_mask = "${in_truth_mask}"
  }
}