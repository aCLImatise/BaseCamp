class: CommandLineTool
id: rna_cd_classify.cwl
inputs:
- id: in_chunksize
  doc: Chunksize in bases. Default = 100
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_contig
  doc: "Name of mitochrondrial contig in your BAM\nfiles. Default = chrM"
  type: string
  inputBinding:
    prefix: --contig
- id: in_cores
  doc: "Number of cores to use for processing of BAM\nfiles. Default = 1"
  type: long
  inputBinding:
    prefix: --cores
- id: in_directory
  doc: "Path to directory with BAM files to be\ntested. Mutually exclusive with --list-items"
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_list_items
  doc: "Path to file containing list of paths to BAM\nfiles to be tested. Mutually\
    \ exclusive with\n--directory"
  type: File
  inputBinding:
    prefix: --list-items
- id: in_model
  doc: Path to model.  [required]
  type: File
  inputBinding:
    prefix: --model
- id: in_output
  doc: Path to output file containing
  type: File
  inputBinding:
    prefix: --output
- id: in_unknown_threshold
  doc: "Threshold of most likely probability below\nwhich sampleswll be assinged as\
    \ 'unknown'.\nDefault = 0.75"
  type: double
  inputBinding:
    prefix: --unknown-threshold
- id: in_classifications_dot
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file containing
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rna_cd-classify
