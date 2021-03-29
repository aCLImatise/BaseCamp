class: CommandLineTool
id: gnali.cwl
inputs:
- id: in_input_file
  doc: 'File of genes to test. Accepted formats: csv, txt'
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Name of output directory. Default: results-ID/'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_force
  doc: Force existing output folder to be overwritten
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_database
  doc: "Database to query. Default: gnomadv2.1.1 Options:\n['gnomadv2.1.1', 'gnomadv3']"
  type: double?
  inputBinding:
    prefix: --database
- id: in_vcf
  doc: Generate vcf file for filtered variants
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_predefined_filters_use
  doc: "[PREDEFINED_FILTERS [PREDEFINED_FILTERS ...]], --predefined_filters [PREDEFINED_FILTERS\
    \ [PREDEFINED_FILTERS ...]]\nPredefined filters. To use multiple, separate them\
    \ by\nspaces. Options: {'gnomadv2.1.1': {'homozygous-\ncontrols': 'controls_nhomalt>0',\
    \ 'heterozygous-\ncontrols': 'controls_nhomalt=0', 'homozygous':\n'nhomalt>0'},\
    \ 'gnomadv3': {'homozygous': 'nhomalt>0'}}"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_additional_filters_use
  doc: "[ADDITIONAL_FILTERS [ADDITIONAL_FILTERS ...]], --additional_filters [ADDITIONAL_FILTERS\
    \ [ADDITIONAL_FILTERS ...]]\nAdditional filters. To use multiple, separate them\
    \ by\nspaces. Please enclose each in quotes (ex. \"AC>3\")"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_pop_freqs
  doc: Get population frequencies (in detailed output file)
  type: File?
  inputBinding:
    prefix: --pop_freqs
- id: in_config
  doc: "Use a custom config file. To get started, check out\nthe --config_template\
    \ commands"
  type: File?
  inputBinding:
    prefix: --config
- id: in_config_template_gr_ch_three_seven
  doc: "Create a fillable template for a config for a database\nusing the GRCh37 assembly"
  type: boolean?
  inputBinding:
    prefix: --config_template_grch37
- id: in_config_template_gr_ch_three_eight
  doc: "Create a fillable template for a config for a database\nusing the GRCh38 assembly\n"
  type: boolean?
  inputBinding:
    prefix: --config_template_grch38
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Name of output directory. Default: results-ID/'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_force
  doc: Force existing output folder to be overwritten
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_pop_freqs
  doc: Get population frequencies (in detailed output file)
  type: File?
  outputBinding:
    glob: $(inputs.in_pop_freqs)
- id: out_config
  doc: "Use a custom config file. To get started, check out\nthe --config_template\
    \ commands"
  type: File?
  outputBinding:
    glob: $(inputs.in_config)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnali:1.0.3--py37heccd8a3_0
cwlVersion: v1.1
baseCommand:
- gnali
