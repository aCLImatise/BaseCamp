class: CommandLineTool
id: filter_vep.pl.cwl
inputs:
- id: in_input_file
  doc: "[file]  -i   Specify the input file (i.e. the VEP results file).\nIf no input\
    \ file is specified, the script will\nattempt to read from STDIN. Input may be\
    \ gzipped - to\nforce the script to read a file as gzipped, use --gz"
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_format
  doc: '[format]         Specify input file format (vep or vcf)'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_output_file
  doc: "[file] -o   Specify the output file to write to. If no output file\nis specified,\
    \ the script will write to STDOUT"
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_force_overwrite
  doc: "Force the script to overwrite the output file if it\nalready exists"
  type: File?
  inputBinding:
    prefix: --force_overwrite
- id: in_filter
  doc: "[filters]   -f   Add filter. Multiple --filter flags may be used, and\nare\
    \ treated as logical ANDs, i.e. all filters must\npass for a line to be printed"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_list
  doc: List allowed fields from the input file
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_count
  doc: Print only a count of matched lines
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_only_matched
  doc: "In VCF files, the CSQ field that contains the\nconsequence data will often\
    \ contain more than one\n\"block\" of consequence data, where each block\ncorresponds\
    \ to a variant/feature overlap. Using\n--only_matched will remove blocks that\
    \ do not pass the\nfilters. By default, the script prints out the entire\nVCF\
    \ line if any of the blocks pass the filters."
  type: boolean?
  inputBinding:
    prefix: --only_matched
- id: in_ontology
  doc: "Use Sequence Ontology to match consequence terms. Use\nwith operator \"is\"\
    \ to match against all child terms of\nyour value.\ne.g. \"Consequence is coding_sequence_variant\"\
    \ will\nmatch missense_variant, synonymous_variant etc.\nRequires database connection;\
    \ defaults to connecting\nto ensembldb.ensembl.org. Use --host, --port, --user,\n\
    --password, --version as per\nvariant_effect_predictor.pl to change connection\n\
    parameters.\n"
  type: boolean?
  inputBinding:
    prefix: --ontology
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "[file] -o   Specify the output file to write to. If no output file\nis specified,\
    \ the script will write to STDOUT"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_force_overwrite
  doc: "Force the script to overwrite the output file if it\nalready exists"
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- filter_vep.pl
