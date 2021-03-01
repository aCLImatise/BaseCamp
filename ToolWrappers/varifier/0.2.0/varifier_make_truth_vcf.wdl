version 1.0

task VarifierMakeTruthVcf {
  input {
    Int? max_recall_ref_len
    Int? flank_length
    File? truth_mask
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
      ~{if defined(truth_mask) then ("--truth_mask " +  '"' + truth_mask + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varifier:0.2.0--py_0"
  }
  parameter_meta {
    max_recall_ref_len: "Do not include variants where REF length is more than\\nthis number. Default is no limit"
    flank_length: "Length of sequence to add either side of variant when\\nmaking probe sequences [100]"
    truth_mask: "BED file of truth genome regions to mask. Any variants\\nin the VCF matching to the mask are flagged and will\\nnot count towards precision or recall if the output\\nVCF is used with vcf_eval\\n"
    truth_fast_a: "FASTA file of truth genome"
    ref_fast_a: "FASTA file of reference genome"
    outdir: "Name of output directory"
  }
  output {
    File out_stdout = stdout()
    File out_truth_mask = "${in_truth_mask}"
  }
}