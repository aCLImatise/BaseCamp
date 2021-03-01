class: CommandLineTool
id: FGAP.cwl
inputs:
- id: in_draft_file
  doc: "Draft genome file [fasta format - Ex: 'draft.fasta']"
  type: boolean?
  inputBinding:
    prefix: --draft-file
- id: in_datasets_files
  doc: "List of datasets files to close gaps [fasta format - Ex: 'dataset1.fasta,dataset2.fasta']"
  type: boolean?
  inputBinding:
    prefix: --datasets-files
- id: in_min_score
  doc: 'Min Score (raw) to return results from BLAST (integer) - Default: 25'
  type: boolean?
  inputBinding:
    prefix: --min-score
- id: in_max_evalue
  doc: 'Max E-Value to return results from BLAST (float) - Default: 1e-7'
  type: boolean?
  inputBinding:
    prefix: --max-evalue
- id: in_min_identity
  doc: 'Min identity (%) to return results from BLAST (integer [0-100]) - Default:
    70'
  type: boolean?
  inputBinding:
    prefix: --min-identity
- id: in_contig_end_length
  doc: '(bp) of contig ends to perform BLAST alignment (integer) - Default: 300'
  type: long?
  inputBinding:
    prefix: --contig-end-length
- id: in_edge_trim_length
  doc: 'Length of ignored bases (bp) upstream and downstrem of the gap (integer) -
    Default: 0'
  type: boolean?
  inputBinding:
    prefix: --edge-trim-length
- id: in_max_remove_length
  doc: 'number of bases (bp) that can be removed (integer) - Default: 500'
  type: long?
  inputBinding:
    prefix: --max-remove-length
- id: in_max_insert_length
  doc: 'number of bases (bp) that can be inserted (integer) - Default: 500'
  type: long?
  inputBinding:
    prefix: --max-insert-length
- id: in_positive_gap
  doc: 'Enable closing of positive gaps (with insertion) (integer [0-1]) - Default:
    1'
  type: boolean?
  inputBinding:
    prefix: --positive-gap
- id: in_zero_gap
  doc: 'Enable closing of zero gaps (without insert any base) (integer [0-1]) - Default:
    0'
  type: boolean?
  inputBinding:
    prefix: --zero-gap
- id: in_negative_gap
  doc: 'Enable closing of negative gaps (overlapping contig ends) (integer [0-1])
    - Default: 0'
  type: boolean?
  inputBinding:
    prefix: --negative-gap
- id: in_gap_char
  doc: "Base that represents the gap (char) - Default: 'N'"
  type: boolean?
  inputBinding:
    prefix: --gap-char
- id: in_blast_path
  doc: "Blast+ package path (only makeblastdb and blastn are needed, version 2.2.28+\
    \ or higher) - Default: ''"
  type: boolean?
  inputBinding:
    prefix: --blast-path
- id: in_blast_alignment_parameters
  doc: "BLAST alignment parameters (opengap,extendgap,match,mismatch,wordsize) - Default:\
    \ '1,1,1,-3,15'"
  type: boolean?
  inputBinding:
    prefix: --blast-alignment-parameters
- id: in_blast_max_results
  doc: 'Max results from BLAST for each query (integer) - Default: 200'
  type: boolean?
  inputBinding:
    prefix: --blast-max-results
- id: in_threads
  doc: 'Number of threads (integer) - Default: 1'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_more_output
  doc: 'More output files with gap regions after and before gap closing (integer [0-1])
    - Default: 0'
  type: boolean?
  inputBinding:
    prefix: --more-output
- id: in_output_prefix
  doc: "Output prefix [File or folder - Ex: 'out' or 'out_folder/out' ] - Default:\
    \ 'output_fgap'"
  type: File?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: "Output prefix [File or folder - Ex: 'out' or 'out_folder/out' ] - Default:\
    \ 'output_fgap'"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- FGAP
