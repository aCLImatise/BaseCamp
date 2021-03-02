version 1.0

task VarifierVcfEval {
  input {
    Int? flank_length
    Boolean? force
    Int? filter_pass
    File? ref_mask
    File? truth_mask
    File? truth_vcf
    Int? max_recall_ref_len
    Boolean? use_ref_calls
    String truth_fast_a
    String vcf_fast_a
    String vcf_in
    String outdir
  }
  command <<<
    varifier vcf_eval \
      ~{truth_fast_a} \
      ~{vcf_fast_a} \
      ~{vcf_in} \
      ~{outdir} \
      ~{if defined(flank_length) then ("--flank_length " +  '"' + flank_length + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(filter_pass) then ("--filter_pass " +  '"' + filter_pass + '"') else ""} \
      ~{if defined(ref_mask) then ("--ref_mask " +  '"' + ref_mask + '"') else ""} \
      ~{if defined(truth_mask) then ("--truth_mask " +  '"' + truth_mask + '"') else ""} \
      ~{if defined(truth_vcf) then ("--truth_vcf " +  '"' + truth_vcf + '"') else ""} \
      ~{if defined(max_recall_ref_len) then ("--max_recall_ref_len " +  '"' + max_recall_ref_len + '"') else ""} \
      ~{if (use_ref_calls) then "--use_ref_calls" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varifier:0.2.0--py_0"
  }
  parameter_meta {
    flank_length: "Length of sequence to add either side of variant when\\nmaking probe sequences [100]"
    force: "Replace outdir if it already exists"
    filter_pass: "[,FILTER2[,...]]\\nDefines how to handle FILTER column of input VCF file.\\nComma-separated list of filter names. A VCF line is\\nkept if any of its FILTER entries are in the provided\\nlist. Put '.' in the list to keep records where the\\nfilter column is '.'. Default behaviour is to ignore\\nthe filter column and use all records"
    ref_mask: "BED file of ref regions to mask. Any variants in the\\nVCF overlapping the mask are removed at the start of\\nthe pipeline"
    truth_mask: "BED file of truth genome regions to mask. Any variants\\nin the VCF matching to the mask are flagged and do not\\ncount towards precision or recall"
    truth_vcf: "VCF file of variant calls between vcf_fasta and\\ntruth_fasta, where reference of this VCF file is\\ntruth_fasta. If provided, used to calculate recall"
    max_recall_ref_len: "For recall, do not look for expected variants where\\nREF length is more than this number. Default is no\\nlimit. This option will not work if you use\\n--truth_vcf"
    use_ref_calls: "Include 0/0 genotype calls when calculating TPs and\\nprecision. By default they are ignored\\n"
    truth_fast_a: "FASTA file of truth genome"
    vcf_fast_a: "FASTA file corresponding to vcf_file"
    vcf_in: "VCF file to evaluate"
    outdir: "Name of output directory"
  }
  output {
    File out_stdout = stdout()
  }
}