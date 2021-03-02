class: CommandLineTool
id: checkm_merge.cwl
inputs:
- id: in_genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_delta_comp
  doc: 'minimum increase in completeness to report pair (default: 5.0)'
  type: double?
  inputBinding:
    prefix: --delta_comp
- id: in_delta_cont
  doc: 'maximum increase in contamination to report pair (default: 10.0)'
  type: double?
  inputBinding:
    prefix: --delta_cont
- id: in_merged_comp
  doc: 'minimum merged completeness to report pair (default: 50.0)'
  type: double?
  inputBinding:
    prefix: --merged_comp
- id: in_merged_cont
  doc: 'maximum merged contamination to report pair (default: 20.0)'
  type: double?
  inputBinding:
    prefix: --merged_cont
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
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
- id: in_marker_file
  doc: marker file to use for assessing potential bin mergers (marker set or HMM file)
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
hints: []
cwlVersion: v1.1
baseCommand:
- checkm
- merge
