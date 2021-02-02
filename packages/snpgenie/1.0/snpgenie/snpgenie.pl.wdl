version 1.0

task Snpgeniepl {
  input {
    Boolean? fast_a_file
    Boolean? gtf_file
    Boolean? snp_report
    Boolean? vcf_format
    Boolean? min_freq
    Boolean? workdir
    File? outdir
  }
  command <<<
    snpgenie_pl \
      ~{if (fast_a_file) then "--fastafile" else ""} \
      ~{if (gtf_file) then "--gtffile" else ""} \
      ~{if (snp_report) then "--snpreport" else ""} \
      ~{if (vcf_format) then "--vcfformat" else ""} \
      ~{if (min_freq) then "--minfreq" else ""} \
      ~{if (workdir) then "--workdir" else ""} \
      ~{if (outdir) then "--outdir" else ""}
  >>>
  parameter_meta {
    fast_a_file: ": FASTA file containing exactly one (1) reference sequence.\\nAll positions in the SNP report must correspond to one position in this\\nsequence. DEFAULT: .fa/.fasta file in the working directory."
    gtf_file: ": tab-delimited Gene Transfer Format file containing non-redundant\\nrecords for all \\\"CDS\\\" elements (i.e., open reading frames, or ORFs)\\npresent in the SNP report(s). DEFAULT: .gtf file in the working directory."
    snp_report: ": CLC, Geneious, or VCF file containing SNP data with respect to\\npositions in the provided reference sequence (FASTA). If VCF, the exact\\nformat must be specified (see documentation). DEFAULT: .txt or .vcf file(s)\\nin the working directory."
    vcf_format: "(REQUIRED IF VCF): format ID of the VCF file (see documentation).\\nFormat 4 is the only option which provides support for concurrent analysis\\nof multiple samples."
    min_freq: ": minimum SNP frequency to consider when calculating diversity measures;\\nuseful if SNPs below a certain frequency are likely to be errors.\\nDEFAULT: 0"
    workdir: "(OPTIONAL): user-specified working directory name. DEFAULT: current\\nworking directory."
    outdir: "(OPTIONAL): user-specified output directory name. Unless a full path,\\nis given, the directory will be created in the working directory.\\nDEFAULT: SNPGenie_Results (in working directory)."
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}