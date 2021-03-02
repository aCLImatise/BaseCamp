class: CommandLineTool
id: refinem_filter_bins.cwl
inputs:
- id: in_genome_ext
  doc: "extension of genomes (other files in directory are\nignored) (default: fna)"
  type: Directory?
  inputBinding:
    prefix: --genome_ext
- id: in_modified_only
  doc: only copy modified bins to the output folder
  type: Directory?
  inputBinding:
    prefix: --modified_only
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_nt_dir
  doc: directory containing nucleotide scaffolds for each
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: filter_file           file specifying scaffolds to remove
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_modified_only
  doc: only copy modified bins to the output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_modified_only)
hints: []
cwlVersion: v1.1
baseCommand:
- refinem
- filter_bins
