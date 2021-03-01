class: CommandLineTool
id: checkm_qa.cwl
inputs:
- id: in_out_format
  doc: "desired output: (default: 1)\n1. summary of bin completeness and contamination\n\
    2. extended summary of bin statistics (includes GC, genome size, ...)\n3. summary\
    \ of bin quality for increasingly basal lineage-specific marker sets\n4. list\
    \ of marker genes and their counts\n5. list of bin id, marker gene id, gene id\n\
    6. list of marker genes present multiple times in a bin\n7. list of marker genes\
    \ present multiple times on the same scaffold\n8. list indicating position of\
    \ each marker gene within a bin\n9. FASTA file of marker genes identified in each\
    \ bin"
  type: string?
  inputBinding:
    prefix: --out_format
- id: in_exclude_markers
  doc: file specifying markers to exclude from marker sets
  type: File?
  inputBinding:
    prefix: --exclude_markers
- id: in_individual_markers
  doc: treat marker as independent (i.e., ignore co-located set structure)
  type: boolean?
  inputBinding:
    prefix: --individual_markers
- id: in_skip_adj_correction
  doc: do not exclude adjacent marker genes when estimating contamination
  type: boolean?
  inputBinding:
    prefix: --skip_adj_correction
- id: in_skip_pseudogene_correction
  doc: skip identification and filtering of pseudogenes
  type: boolean?
  inputBinding:
    prefix: --skip_pseudogene_correction
- id: in_aai_strain
  doc: 'AAI threshold used to identify strain heterogeneity (default: 0.9)'
  type: double?
  inputBinding:
    prefix: --aai_strain
- id: in_alignment_file
  doc: produce file showing alignment of multi-copy genes and their AAI identity
  type: File?
  inputBinding:
    prefix: --alignment_file
- id: in_ignore_thresholds
  doc: ignore model-specific score thresholds
  type: boolean?
  inputBinding:
    prefix: --ignore_thresholds
- id: in_e_value
  doc: 'e-value cut off (default: 1e-10)'
  type: double?
  inputBinding:
    prefix: --e_value
- id: in_length
  doc: 'percent overlap between target and query (default: 0.7)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_coverage_file
  doc: file containing coverage of each sequence; coverage information added to table
    type 2 (see coverage command)
  type: File?
  inputBinding:
    prefix: --coverage_file
- id: in_file
  doc: 'print results to file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --file
- id: in_tab_table
  doc: print tab-separated values table
  type: boolean?
  inputBinding:
    prefix: --tab_table
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
  doc: marker file specified during analyze command
  type: string
  inputBinding:
    position: 0
- id: in_analyze_dir
  doc: directory specified during analyze command
  type: string
  inputBinding:
    position: 1
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
- qa
