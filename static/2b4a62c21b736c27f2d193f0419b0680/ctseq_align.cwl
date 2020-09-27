class: CommandLineTool
id: ctseq_align.cwl
inputs:
- id: in_ref_dir
  doc: "Full path to directory where you have already built\nyour methylation reference\
    \ files. If no '--refDir' is\nspecified, ctseq will look in your current directory."
  type: File
  inputBinding:
    prefix: --refDir
- id: in_dir
  doc: "Path to directory where you have your fastq files. If\nno '--dir' is specified,\
    \ ctseq will look in your\ncurrent directory."
  type: File
  inputBinding:
    prefix: --dir
- id: in_forward_adapter
  doc: "adapter sequence to remove from FORWARD reads\n(default=AGTGTGGGAGGGTAGTTGGTGTT)"
  type: string
  inputBinding:
    prefix: --forwardAdapter
- id: in_reverse_adapter
  doc: "adapter sequence to remove from REVERSE reads\n(default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)"
  type: string
  inputBinding:
    prefix: --reverseAdapter
- id: in_cut_adapt_cores
  doc: "number of cores to use with Cutadapt. Default=1.\nHighly recommended to run\
    \ with more than 1 core, try\nstarting with 18 cores"
  type: long
  inputBinding:
    prefix: --cutadaptCores
- id: in_bismark_cores
  doc: "number of cores to use to align with Bismark.\nDefault=1. Highly recommended\
    \ to run with more than 1\ncore, try starting with 6 cores"
  type: long
  inputBinding:
    prefix: --bismarkCores
- id: in_reads_per_file
  doc: "number of reads to analyze per fastq file (should only\nadjust this if you\
    \ think you are too big of a file\nthrough bismark). Default=5000000 (5 million)\n"
  type: File
  inputBinding:
    prefix: --readsPerFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ctseq
- align
