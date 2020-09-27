class: CommandLineTool
id: taxator.cwl
inputs:
- id: in_citation
  doc: show citation info
  type: boolean
  inputBinding:
    prefix: --citation
- id: in_advanced_options
  doc: show advanced program options
  type: boolean
  inputBinding:
    prefix: --advanced-options
- id: in_arg_rpa_set
  doc: "[ --algorithm ] arg (=rpa)      set the algorithm that is used to predict\n\
    taxonomic ids from alignments"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_filename_seqidtaxid
  doc: '[ --seqid-taxid-mapping ] arg   filename of seqid->taxid mapping for'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_query_sequences
  doc: "[ --query-sequences-index ] arg query sequences FASTA index, for\nout-of-memory\
    \ operation; is created if not\nexisting"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_reference_sequences
  doc: '[ --ref-sequences ] arg         reference sequences FASTA'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_fasta_file
  doc: "[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory\noperation;\
    \ is created if not existing"
  type: File
  inputBinding:
    prefix: -i
- id: in_arg_sets_number
  doc: "[ --processors ] arg (=1)       sets number of threads, number > 2 will\n\
    heavily profit from multi-core\narchitectures, set to 0 for max.\nperformance"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_devnull_name
  doc: "[ --logfile ] arg (=/dev/null)  specify name of file for logging\n(appending\
    \ lines)\n"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_reference
  doc: -q [ --query-sequences ] arg       query sequences FASTA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_fasta_file
  doc: "[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory\noperation;\
    \ is created if not existing"
  type: File
  outputBinding:
    glob: $(inputs.in_arg_fasta_file)
cwlVersion: v1.1
baseCommand:
- taxator
