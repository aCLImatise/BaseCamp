class: CommandLineTool
id: miRDeep2.pl.cwl
inputs:
- id: in_minimum_read_stack
  doc: "minimum read stack height that triggers analysis. Using this option disables\n\
    automatic estimation of the optimal value and all detected precursors are analyzed"
  type: long
  inputBinding:
    prefix: -a
- id: in_maximum_number_analyze
  doc: "maximum number of precursors to analyze when automatic excision gearing is\
    \ used.\ndefault=50.000, if set to -1 all precursors will be analyzed"
  type: long
  inputBinding:
    prefix: -g
- id: in_minimum_score_cutoff
  doc: "minimum score cut-off for predicted novel miRNAs to be displayed in the overview\n\
    table. This score cut-off is by default 0."
  type: long
  inputBinding:
    prefix: -b
- id: in_disable_randfold_analysis
  doc: disable randfold analysis
  type: boolean
  inputBinding:
    prefix: -c
- id: in_disable_pdf_generation
  doc: disable pdf generation
  type: boolean
  inputBinding:
    prefix: -d
- id: in_species_analyzed_used
  doc: species being analyzed - this is used to link to the appropriate UCSC browser
    entry
  type: string
  inputBinding:
    prefix: -t
- id: in_output_list_ucsc
  doc: output list of UCSC browser species that are supported and exit
  type: boolean
  inputBinding:
    prefix: -u
- id: in_remove_directory_temporary
  doc: remove directory with temporary files
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sort_aligned_reads
  doc: do not sort aligned reads in pdf files by sample, only used if multiple samples
    were used as input (see Readme for mor information)
  type: boolean
  inputBinding:
    prefix: -o
- id: in_file_known_mirbase
  doc: File with known miRBase star sequences
  type: File
  inputBinding:
    prefix: -s
- id: in_additional_tag_appended
  doc: Additional tag appended to current time stamp
  type: string
  inputBinding:
    prefix: -z
- id: in_use_switch_contain
  doc: use this switch if mature_ref_miRNAs contain miRBase v18 identifiers (5p and
    3p) instead of previous ids from v17
  type: boolean
  inputBinding:
    prefix: -P
- id: in_analyzed_dot
  doc: precursors    miRBase miRNA precursor sequences in fasta format. These should
    be the known precursor
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- miRDeep2.pl
