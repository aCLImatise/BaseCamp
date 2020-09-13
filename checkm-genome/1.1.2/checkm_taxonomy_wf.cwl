class: CommandLineTool
id: ../../../checkm_taxonomy_wf.cwl
inputs:
- id: in_ali
  doc: generate HMMER alignment file for each bin
  type: boolean
  inputBinding:
    prefix: --ali
- id: in_nt
  doc: generate nucleotide gene sequences for each bin
  type: boolean
  inputBinding:
    prefix: --nt
- id: in_genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean
  inputBinding:
    prefix: --genes
- id: in_individual_markers
  doc: treat marker as independent (i.e., ignore co-located set structure)
  type: boolean
  inputBinding:
    prefix: --individual_markers
- id: in_skip_adj_correction
  doc: do not exclude adjacent marker genes when estimating contamination
  type: boolean
  inputBinding:
    prefix: --skip_adj_correction
- id: in_skip_pseudogene_correction
  doc: skip identification and filtering of pseudogenes
  type: boolean
  inputBinding:
    prefix: --skip_pseudogene_correction
- id: in_aai_strain
  doc: 'AAI threshold used to identify strain heterogeneity (default: 0.9)'
  type: double
  inputBinding:
    prefix: --aai_strain
- id: in_alignment_file
  doc: produce file showing alignment of multi-copy genes and their AAI identity
  type: File
  inputBinding:
    prefix: --alignment_file
- id: in_ignore_thresholds
  doc: ignore model-specific score thresholds
  type: boolean
  inputBinding:
    prefix: --ignore_thresholds
- id: in_e_value
  doc: 'e-value cut off (default: 1e-10)'
  type: double
  inputBinding:
    prefix: --e_value
- id: in_length
  doc: 'percent overlap between target and query (default: 0.7)'
  type: long
  inputBinding:
    prefix: --length
- id: in_coverage_file
  doc: file containing coverage of each sequence; coverage information added to table
    type 2 (see coverage command)
  type: File
  inputBinding:
    prefix: --coverage_file
- id: in_file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: in_tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory
  inputBinding:
    prefix: --extension
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkm
- taxonomy_wf
