class: CommandLineTool
id: checkm_analyze.cwl
inputs:
- id: in_ali
  doc: generate HMMER alignment file for each bin
  type: boolean?
  inputBinding:
    prefix: --ali
- id: in_nt
  doc: generate nucleotide gene sequences for each bin
  type: boolean?
  inputBinding:
    prefix: --nt
- id: in_genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean?
  inputBinding:
    prefix: --genes
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
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_marker_file
  doc: markers for assessing bins (marker set or HMM file)
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
- analyze
