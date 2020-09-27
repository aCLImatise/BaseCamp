class: CommandLineTool
id: hicstuff_missview.cwl
inputs:
- id: in_aligner
  doc: "The read alignment software to use. Can be either\nbowtie2, minimap2 or bwa.\
    \ minimap2 should only be\nused for reads > 100 bp. [default: bowtie2]"
  type: long
  inputBinding:
    prefix: --aligner
- id: in_binning
  doc: 'Resolution to use to preview the Hi-C map. [default: 5000]'
  type: long
  inputBinding:
    prefix: --binning
- id: in_force
  doc: Write even if the output file already exists.
  type: File
  inputBinding:
    prefix: --force
- id: in_read_len
  doc: Write even if the output file already exists.
  type: File
  inputBinding:
    prefix: --read-len
- id: in_threads
  doc: 'Number of CPUs to use in parallel. [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: Directory where temporary files will be generated.
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_genome
  doc: Genome file in fasta format.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Path to the output image.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Write even if the output file already exists.
  type: File
  outputBinding:
    glob: $(inputs.in_force)
- id: out_read_len
  doc: Write even if the output file already exists.
  type: File
  outputBinding:
    glob: $(inputs.in_read_len)
cwlVersion: v1.1
baseCommand:
- hicstuff
- missview
