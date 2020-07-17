class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ctseq_align.cwl
inputs:
- id: ref_dir
  doc: Full path to directory where you have already built your methylation reference
    files. If no '--refDir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --refDir
- id: dir
  doc: Path to directory where you have your fastq files. If no '--dir' is specified,
    ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
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
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- align
