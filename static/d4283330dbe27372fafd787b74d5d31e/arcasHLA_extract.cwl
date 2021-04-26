class: CommandLineTool
id: arcasHLA_extract.cwl
inputs:
- id: in_log
  doc: "log file for run summary\ndefault: sample.extract.log"
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_single
  doc: "single-end reads\ndefault: False"
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_unmapped
  doc: "include unmapped reads\ndefault: False"
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_outdir
  doc: out directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_temp
  doc: temp directory
  type: boolean?
  inputBinding:
    prefix: --temp
- id: in_keep_files
  doc: keep intermediate files
  type: boolean?
  inputBinding:
    prefix: --keep_files
- id: in_bam
  doc: /path/to/sample.bam
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: out directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- arcasHLA
- extract
