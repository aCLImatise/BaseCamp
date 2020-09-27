class: CommandLineTool
id: vcflatten.cwl
inputs:
- id: in__info_keysspecify
  doc: "| --info <keys>\nSpecify a semicolon-separated list of INFO IDs to output\
    \ for each variant from the VCF file."
  type: File
  inputBinding:
    prefix: -i
- id: in__genotype_keysspecify
  doc: "| --genotype <keys>\nSpecify a colon-separated list of FORMAT IDs to output\
    \ for each sample from the VCF file."
  type: File
  inputBinding:
    prefix: -g
- id: in_one_file
  doc: If this flag is set, then only 1 TSV file will be generated for all samples.
    In addition, this file will have a SAMPLE column which indicates which sample
    the data belongs to.
  type: boolean
  inputBinding:
    prefix: --one-file
- id: in_no_header
  doc: If this flag is set, the TSV header won't be written to any of the output files.
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_ignore_errors
  doc: If this flag is set, then any errors in the VCF file will be ignored, and the
    invalid rows will be skipped.
  type: boolean
  inputBinding:
    prefix: --ignore-errors
- id: in_prefix
  doc: A filename prefix that can be used in the output pattern. If this is not set,
    then the prefix is the same as <filename>.
  type: File
  inputBinding:
    prefix: --prefix
- id: in__pattern_pattern
  doc: "| --pattern <pattern>\nThe pattern to use when generating output files. The\
    \ default is \"%p-%s-%d\". Valid special patterns are:\n%p    Include the \"prefix\"\
    \ here (either <filename> or given in --prefix <prefix>\n%s    The name of the\
    \ sample, taken from the header of the VCF file.\n%i    The index of the sample\
    \ (1-based).\n%%    A single, literal '%'.\nIf neither %s nor %d is provided,\
    \ then the VCF file must have only 1 sample.\n"
  type: File
  inputBinding:
    prefix: -o
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__info_keysspecify
  doc: "| --info <keys>\nSpecify a semicolon-separated list of INFO IDs to output\
    \ for each variant from the VCF file."
  type: File
  outputBinding:
    glob: $(inputs.in__info_keysspecify)
- id: out__genotype_keysspecify
  doc: "| --genotype <keys>\nSpecify a colon-separated list of FORMAT IDs to output\
    \ for each sample from the VCF file."
  type: File
  outputBinding:
    glob: $(inputs.in__genotype_keysspecify)
- id: out_prefix
  doc: A filename prefix that can be used in the output pattern. If this is not set,
    then the prefix is the same as <filename>.
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out__pattern_pattern
  doc: "| --pattern <pattern>\nThe pattern to use when generating output files. The\
    \ default is \"%p-%s-%d\". Valid special patterns are:\n%p    Include the \"prefix\"\
    \ here (either <filename> or given in --prefix <prefix>\n%s    The name of the\
    \ sample, taken from the header of the VCF file.\n%i    The index of the sample\
    \ (1-based).\n%%    A single, literal '%'.\nIf neither %s nor %d is provided,\
    \ then the VCF file must have only 1 sample.\n"
  type: File
  outputBinding:
    glob: $(inputs.in__pattern_pattern)
cwlVersion: v1.1
baseCommand:
- vcflatten
