class: CommandLineTool
id: bcbio_vm.py_template.cwl
inputs:
- id: in_only_metadata
  doc: Ignore samples not present in metadata CSV file
  type: boolean?
  inputBinding:
    prefix: --only-metadata
- id: in_force_single
  doc: Treat all files as single reads
  type: boolean?
  inputBinding:
    prefix: --force-single
- id: in_separators
  doc: "semicolon separated list of separators that indicates\npaired files."
  type: string?
  inputBinding:
    prefix: --separators
- id: in_system_config
  doc: "Global YAML configuration file specifying system\ndetails. Defaults to installed\
    \ bcbio_system.yaml."
  type: File?
  inputBinding:
    prefix: --systemconfig
- id: in_num_cores
  doc: Total cores to use for processing
  type: long?
  inputBinding:
    prefix: --numcores
- id: in_rel_paths
  doc: "Convert inputs into relative paths to the work\ndirectory\n"
  type: boolean?
  inputBinding:
    prefix: --relpaths
- id: in_template
  doc: "Template name or path to template YAML file. Built in\nchoices: freebayes-variant,\
    \ gatk-variant, tumor-\npaired, noalign-variant, illumina-rnaseq, illumina-\n\
    chipseq"
  type: string
  inputBinding:
    position: 0
- id: in_metadata
  doc: "CSV file with project metadata. Name of file used as\nproject name."
  type: string
  inputBinding:
    position: 1
- id: in_input_files
  doc: Input read files, in BAM or fastq format
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- template
