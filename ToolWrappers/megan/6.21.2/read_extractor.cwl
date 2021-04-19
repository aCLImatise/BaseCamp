class: CommandLineTool
id: read_extractor.cwl
inputs:
- id: in_input
  doc: '[string(s)]              Input DAA and/or RMA file(s). Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "[string(s)]             Output file(s). Use %t for class name and %i for class\
    \ id. (Directory, stdout, .gz ok). Default value(s): 'stdout'."
  type: File?
  inputBinding:
    prefix: --output
- id: in_classification
  doc: '[string]        The classification to use.  Legal values: EC, EGGNOG, GTDB,
    INTERPRO2GO, KEGG, SEED, Taxonomy'
  type: boolean?
  inputBinding:
    prefix: --classification
- id: in_class_names
  doc: '[string(s)]         Names (or ids) of classes to extract reads from (default:
    extract all classes).'
  type: boolean?
  inputBinding:
    prefix: --classNames
- id: in_all
  doc: 'Extract all reads (not by class). Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_ignore_exceptions
  doc: 'Ignore exceptions and continue processing. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --ignoreExceptions
- id: in_gzip_output_files
  doc: 'If output directory is given, gzip files written to directory. Default value:
    true.'
  type: Directory?
  inputBinding:
    prefix: --gzipOutputFiles
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_commands
  doc: '-fsc, --frameShiftCorrect            Extract frame-shift corrected reads.
    Default value: false.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "[string(s)]             Output file(s). Use %t for class name and %i for class\
    \ id. (Directory, stdout, .gz ok). Default value(s): 'stdout'."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_gzip_output_files
  doc: 'If output directory is given, gzip files written to directory. Default value:
    true.'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_gzip_output_files)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- read-extractor
