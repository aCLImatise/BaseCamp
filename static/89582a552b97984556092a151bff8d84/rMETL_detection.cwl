class: CommandLineTool
id: rMETL_detection.cwl
inputs:
- id: reference
  doc: The reference genome in fasta format.
  type: string
  inputBinding:
    position: 0
- id: temp_dir
  doc: Temporary directory to use for distributed jobs.
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: Directory to output potential ME loci.
  type: string
  inputBinding:
    position: 2
- id: min_support
  doc: Mininum number of reads that support a ME.[5]
  type: long
  inputBinding:
    prefix: --min_support
- id: min_length
  doc: Mininum length of ME to be reported.[50]
  type: long
  inputBinding:
    prefix: --min_length
- id: min_distance
  doc: Mininum distance of two ME signatures to be intergrated.[20]
  type: long
  inputBinding:
    prefix: --min_distance
- id: threads
  doc: Number of threads to use.[8]
  type: string
  inputBinding:
    prefix: --threads
- id: presets
  doc: The sequencing platform <pacbio,ont> of the reads.[pacbio]
  type: string
  inputBinding:
    prefix: --presets
outputs: []
cwlVersion: v1.1
baseCommand:
- rMETL
- detection
