class: CommandLineTool
id: RNAlienScan.cwl
inputs:
- id: in_input_fast_a_file_path
  doc: Path to input fasta file
  type: File
  inputBinding:
    prefix: --inputfastafilepath
- id: in_input_alignment_file_path
  doc: Path to input alignment file
  type: File
  inputBinding:
    prefix: --inputalignmentfilepath
- id: in_input_genomes_fast_a_file_path
  doc: Path to input genome fasta files
  type: File
  inputBinding:
    prefix: --inputgenomesfastafilepath
- id: in_output_path
  doc: "Path to output directory. Default:\ncurrent working directory"
  type: File
  inputBinding:
    prefix: --outputpath
- id: in_input_nsci_cut_off
  doc: "Only candidate sequences with a\nnormalized structure conservation index\n\
    (nSCI) higher than this value are\naccepted. Default: 1"
  type: long
  inputBinding:
    prefix: --inputnscicutoff
- id: in_input_evalue_cut_off
  doc: "Evalue cutoff for cmsearch filtering.\nDefault: 0.001"
  type: long
  inputBinding:
    prefix: --inputevaluecutoff
- id: in_length_filter
  doc: "Filter blast hits per genomic length.\nDefault: True"
  type: boolean
  inputBinding:
    prefix: --lengthfilter
- id: in_coverage_filter
  doc: "Filter blast hits by coverage of at\nleast 80%. Default: True"
  type: boolean
  inputBinding:
    prefix: --coveragefilter
- id: in_single_hit_per_tax
  doc: "Only the best blast hit per taxonomic\nentry is considered. Default: False"
  type: boolean
  inputBinding:
    prefix: --singlehitpertax
- id: in_blast_soft_masking
  doc: "Toggles blast query softmasking,\nmeaning masking of non-conserved regions\n\
    on the query. Default: False"
  type: boolean
  inputBinding:
    prefix: --blastsoftmasking
- id: in_input_query_selection_method
  doc: "Method for selection of queries\n(filtering,clustering). Default:\nfiltering"
  type: string
  inputBinding:
    prefix: --inputqueryselectionmethod
- id: in_input_query_number
  doc: "Number of queries used for candidate\nsearch. Default: 5"
  type: long
  inputBinding:
    prefix: --inputquerynumber
- id: in_threads
  doc: "Number of available cpu slots/cores.\nDefault: 1"
  type: long
  inputBinding:
    prefix: --threads
- id: in_session_identifica_tor
  doc: "Optional session id that is used\ninstead of automatically generated one."
  type: string
  inputBinding:
    prefix: --sessionidentificator
- id: in_perform_evaluation
  doc: 'Perform evaluation step. Default: True'
  type: boolean
  inputBinding:
    prefix: --performevaluation
- id: in_check_setup
  doc: "Just prints installed tool versions\nand performs connection check. Default:\n\
    False"
  type: boolean
  inputBinding:
    prefix: --checksetup
- id: in_numeric_version
  doc: Print just the version number
  type: boolean
  inputBinding:
    prefix: --numeric-version
- id: in_verbose
  doc: Loud verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Path to output directory. Default:\ncurrent working directory"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
cwlVersion: v1.1
baseCommand:
- RNAlienScan
