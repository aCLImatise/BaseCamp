class: CommandLineTool
id: ../../../ctseq_analyze.cwl
inputs:
- id: umi_type
  doc: "Choose 'separate' if the UMIs for the reads are contained in a separate fastq\
    \ file where the line after the read name is the UMI. Choose 'inline' if the UMIs\
    \ are already included in the forward/reverse read fastq files in the following\
    \ format: '@M01806:488:0000 00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG 1:N:0:CGAGTAAT'\
    \ where 'GTAGGTAAAGTG' is the UMI"
  type: string
  inputBinding:
    prefix: --umiType
- id: umi_length
  doc: Length of UMI sequence, e.g. 12 (required)
  type: string
  inputBinding:
    prefix: --umiLength
- id: dir
  doc: Path to directory where you have your fastq files. If no '--dir' is specified,
    ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
- id: ref_dir
  doc: Full path to directory where you have already built your methylation reference
    files. If no '--refDir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --refDir
- id: forward_ext
  doc: Unique extension of fastq files containing FORWARD reads. Make sure to include
    '.gz' if your files are compressed (required)
  type: string
  inputBinding:
    prefix: --forwardExt
- id: reverse_ext
  doc: Unique extension of fastq files containing REVERSE reads. Make sure to include
    '.gz' if your files are compressed (required)
  type: string
  inputBinding:
    prefix: --reverseExt
- id: umi_ext
  doc: Unique extension of fastq files containing the UMIs (This flag is REQUIRED
    if UMIs are contained in separate fastq file). Make sure to include '.gz' if your
    files are compressed.
  type: string
  inputBinding:
    prefix: --umiExt
- id: forward_adapter
  doc: adapter sequence to remove from FORWARD reads (default=AGTGTGGGAGGGTAGTTGGTGTT)
  type: string
  inputBinding:
    prefix: --forwardAdapter
- id: reverse_adapter
  doc: adapter sequence to remove from REVERSE reads (default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)
  type: string
  inputBinding:
    prefix: --reverseAdapter
- id: cut_adapt_cores
  doc: number of cores to use with Cutadapt. Default=1. Highly recommended to run
    with more than 1 core, try starting with 18 cores
  type: string
  inputBinding:
    prefix: --cutadaptCores
- id: bismark_cores
  doc: number of cores to use to align with Bismark. Default=1. Highly recommended
    to run with more than 1 core, try starting with 6 cores
  type: string
  inputBinding:
    prefix: --bismarkCores
- id: reads_per_file
  doc: number of reads to analyze per fastq file (should only adjust this if you think
    you are too big of a file through bismark). Default=5000000 (5 million)
  type: string
  inputBinding:
    prefix: --readsPerFile
- id: consensus
  doc: consensus threshold to make consensus methylation call from all the reads with
    the same UMI (default=0.9)
  type: string
  inputBinding:
    prefix: --consensus
- id: processes
  doc: number of processes (default=1; default settings could take a long time to
    run)
  type: string
  inputBinding:
    prefix: --processes
- id: umi_threshold
  doc: UMIs with this edit distance will be collapsed together, default=0 (don't collapse)
  type: string
  inputBinding:
    prefix: --umiThreshold
- id: umi_collapse_alg
  doc: 'algorithm used to collapse UMIs, options: default=directional'
  type: string
  inputBinding:
    prefix: --umiCollapseAlg
- id: name_run
  doc: number of reads needed to be counted as a unique molecule (required)
  type: string
  inputBinding:
    prefix: --nameRun
- id: cisc_g
  doc: cis-CG threshold to determine if a molecule is methylated (default=0.75)
  type: string
  inputBinding:
    prefix: --cisCG
- id: molecule_threshold
  doc: number of reads needed to be counted as a unique molecule (default=5)
  type: string
  inputBinding:
    prefix: --moleculeThreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- analyze
