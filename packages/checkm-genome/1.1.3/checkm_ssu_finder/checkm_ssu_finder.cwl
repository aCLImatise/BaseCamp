class: CommandLineTool
id: checkm_ssu_finder.cwl
inputs:
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_evalue
  doc: 'e-value threshold for identifying hits (default: 1e-05)'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_concatenate
  doc: 'concatenate hits that are within the specified number of base pairs (default:
    200)'
  type: long?
  inputBinding:
    prefix: --concatenate
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: in_bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: directory to write output files
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- ssu_finder
