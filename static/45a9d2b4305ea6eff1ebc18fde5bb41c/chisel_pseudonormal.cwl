class: CommandLineTool
id: chisel_pseudonormal.cwl
inputs:
- id: in_reference
  doc: Reference genome
  type: string?
  inputBinding:
    prefix: --reference
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_threshold
  doc: "Minimum fraction of diploid genome to select diploid\ncells (default: 0.9)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_size
  doc: Bin size, with or without "kb" or "Mb"
  type: long?
  inputBinding:
    prefix: --size
- id: in_chromosomes
  doc: "Space-separeted list of chromosomes between apices\n(default: \"chr1 chr2\
    \ chr3 chr4 chr5 chr6 chr7 chr8\nchr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16\
    \ chr17\nchr18 chr19 chr20 chr21 chr22\")"
  type: long?
  inputBinding:
    prefix: --chromosomes
- id: in_min_reads
  doc: "Minimum number total reads to select cells (default:\n100000)"
  type: long?
  inputBinding:
    prefix: --minreads
- id: in_sam_tools
  doc: "Path to the directory to \"samtools\" executable,\nrequired in default mode\
    \ (default: samtools is\ndirectly called as it is in user $PATH)"
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_tmpdir
  doc: "Temporary directory in running directory (default:\n_TMP)"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_normal
  doc: "Name of the generated pseudo matched-normal BAM file\n(default: pseudonormal.bam)\n"
  type: File?
  inputBinding:
    prefix: --normal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chisel:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- chisel_pseudonormal
