class: CommandLineTool
id: ctseq_analyze.cwl
inputs:
- id: in_umi_type
  doc: "Choose 'separate' if the UMIs for the reads are\ncontained in a separate fastq\
    \ file where the line\nafter the read name is the UMI. Choose 'inline' if the\n\
    UMIs are already included in the forward/reverse read\nfastq files in the following\
    \ format: '@M01806:488:0000\n00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG\n1:N:0:CGAGTAAT'\
    \ where 'GTAGGTAAAGTG' is the UMI"
  type: string?
  inputBinding:
    prefix: --umiType
- id: in_umi_length
  doc: Length of UMI sequence, e.g. 12 (required)
  type: long?
  inputBinding:
    prefix: --umiLength
- id: in_dir
  doc: "Path to directory where you have your fastq files. If\nno '--dir' is specified,\
    \ ctseq will look in your\ncurrent directory."
  type: File?
  inputBinding:
    prefix: --dir
- id: in_ref_dir
  doc: "Full path to directory where you have already built\nyour methylation reference\
    \ files. If no '--refDir' is\nspecified, ctseq will look in your current directory."
  type: File?
  inputBinding:
    prefix: --refDir
- id: in_forward_ext
  doc: "Unique extension of fastq files containing FORWARD\nreads. Make sure to include\
    \ '.gz' if your files are\ncompressed (required)"
  type: string?
  inputBinding:
    prefix: --forwardExt
- id: in_reverse_ext
  doc: "Unique extension of fastq files containing REVERSE\nreads. Make sure to include\
    \ '.gz' if your files are\ncompressed (required)"
  type: string?
  inputBinding:
    prefix: --reverseExt
- id: in_umi_ext
  doc: "Unique extension of fastq files containing the UMIs\n(This flag is REQUIRED\
    \ if UMIs are contained in\nseparate fastq file). Make sure to include '.gz' if\n\
    your files are compressed."
  type: File?
  inputBinding:
    prefix: --umiExt
- id: in_forward_adapter
  doc: "adapter sequence to remove from FORWARD reads\n(default=AGTGTGGGAGGGTAGTTGGTGTT)"
  type: string?
  inputBinding:
    prefix: --forwardAdapter
- id: in_reverse_adapter
  doc: "adapter sequence to remove from REVERSE reads\n(default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)"
  type: string?
  inputBinding:
    prefix: --reverseAdapter
- id: in_cut_adapt_cores
  doc: "number of cores to use with Cutadapt. Default=1.\nHighly recommended to run\
    \ with more than 1 core, try\nstarting with 18 cores"
  type: long?
  inputBinding:
    prefix: --cutadaptCores
- id: in_bismark_cores
  doc: "number of cores to use to align with Bismark.\nDefault=1. Highly recommended\
    \ to run with more than 1\ncore, try starting with 6 cores"
  type: long?
  inputBinding:
    prefix: --bismarkCores
- id: in_reads_per_file
  doc: "number of reads to analyze per fastq file (should only\nadjust this if you\
    \ think you are too big of a file\nthrough bismark). Default=5000000 (5 million)"
  type: File?
  inputBinding:
    prefix: --readsPerFile
- id: in_consensus
  doc: "consensus threshold to make consensus methylation call\nfrom all the reads\
    \ with the same UMI (default=0.9)"
  type: double?
  inputBinding:
    prefix: --consensus
- id: in_processes
  doc: "number of processes (default=1; default settings could\ntake a long time to\
    \ run)"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_umi_threshold
  doc: "UMIs with this edit distance will be collapsed\ntogether, default=0 (don't\
    \ collapse)"
  type: long?
  inputBinding:
    prefix: --umiThreshold
- id: in_umi_collapse_alg
  doc: "algorithm used to collapse UMIs, options:\ndefault=directional"
  type: string?
  inputBinding:
    prefix: --umiCollapseAlg
- id: in_name_run
  doc: "number of reads needed to be counted as a unique\nmolecule (required)"
  type: long?
  inputBinding:
    prefix: --nameRun
- id: in_cisc_g
  doc: "cis-CG threshold to determine if a molecule is\nmethylated (default=0.75)"
  type: double?
  inputBinding:
    prefix: --cisCG
- id: in_molecule_threshold
  doc: "number of reads needed to be counted as a unique\nmolecule (default=5)\n"
  type: long?
  inputBinding:
    prefix: --moleculeThreshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ctseq
- analyze
