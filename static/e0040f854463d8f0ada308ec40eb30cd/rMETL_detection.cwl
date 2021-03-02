class: CommandLineTool
id: rMETL_detection.cwl
inputs:
- id: in_min_support
  doc: Mininum number of reads that support a ME.[5]
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_min_length
  doc: Mininum length of ME to be reported.[50]
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_min_distance
  doc: "Mininum distance of two ME signatures to be\nintergrated.[20]"
  type: long?
  inputBinding:
    prefix: --min_distance
- id: in_threads
  doc: Number of threads to use.[8]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_presets
  doc: "The sequencing platform <pacbio,ont> of the\nreads.[pacbio]\n"
  type: string?
  inputBinding:
    prefix: --presets
- id: in_reference
  doc: The reference genome in fasta format.
  type: string
  inputBinding:
    position: 0
- id: in_temp_dir
  doc: Temporary directory to use for distributed jobs.
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: Directory to output potential ME loci.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rMETL
- detection
