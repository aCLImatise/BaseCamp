class: CommandLineTool
id: snpgenie.pl.cwl
inputs:
- id: in_fast_a_file
  doc: ": FASTA file containing exactly one (1) reference sequence.\nAll positions\
    \ in the SNP report must correspond to one position in this\nsequence. DEFAULT:\
    \ .fa/.fasta file in the working directory."
  type: boolean?
  inputBinding:
    prefix: --fastafile
- id: in_gtf_file
  doc: ": tab-delimited Gene Transfer Format file containing non-redundant\nrecords\
    \ for all \"CDS\" elements (i.e., open reading frames, or ORFs)\npresent in the\
    \ SNP report(s). DEFAULT: .gtf file in the working directory."
  type: boolean?
  inputBinding:
    prefix: --gtffile
- id: in_snp_report
  doc: ": CLC, Geneious, or VCF file containing SNP data with respect to\npositions\
    \ in the provided reference sequence (FASTA). If VCF, the exact\nformat must be\
    \ specified (see documentation). DEFAULT: .txt or .vcf file(s)\nin the working\
    \ directory."
  type: boolean?
  inputBinding:
    prefix: --snpreport
- id: in_vcf_format
  doc: "(REQUIRED IF VCF): format ID of the VCF file (see documentation).\nFormat\
    \ 4 is the only option which provides support for concurrent analysis\nof multiple\
    \ samples."
  type: boolean?
  inputBinding:
    prefix: --vcfformat
- id: in_min_freq
  doc: ": minimum SNP frequency to consider when calculating diversity measures;\n\
    useful if SNPs below a certain frequency are likely to be errors.\nDEFAULT: 0"
  type: boolean?
  inputBinding:
    prefix: --minfreq
- id: in_workdir
  doc: "(OPTIONAL): user-specified working directory name. DEFAULT: current\nworking\
    \ directory."
  type: boolean?
  inputBinding:
    prefix: --workdir
- id: in_outdir
  doc: "(OPTIONAL): user-specified output directory name. Unless a full path,\nis\
    \ given, the directory will be created in the working directory.\nDEFAULT: SNPGenie_Results\
    \ (in working directory)."
  type: File?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "(OPTIONAL): user-specified output directory name. Unless a full path,\nis\
    \ given, the directory will be created in the working directory.\nDEFAULT: SNPGenie_Results\
    \ (in working directory)."
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- snpgenie.pl
