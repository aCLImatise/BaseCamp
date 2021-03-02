class: CommandLineTool
id: make_batch_for_get_organelle.py.cwl
inputs:
- id: in_output_base_name
  doc: output base name for each sample
  type: string?
  inputBinding:
    prefix: -o
- id: in_other_arguments_wouldtakeuse
  doc: "Other arguments that get_organelle_from_reads.py would\ntake.Use double quotation\
    \ marks to include all the\nargumentsExample: \"-s plastome.fasta -a\nmitochondrial.fasta\
    \ -F embplant_pt -w 105\""
  type: long?
  inputBinding:
    prefix: -p
- id: in_all
  doc: "Choose to make command for all samples including samples\nwith results.Default:\
    \ skip those with results."
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_annotated
  doc: "Choose to make annotated command for skipped\ncommands.Default: False."
  type: boolean?
  inputBinding:
    prefix: --annotated
- id: in_strict
  doc: "Choose to only search for the fastq with the same base\nname with the directory\
    \ (*/*_1.fq). Default: relaxed\nsearching.\n"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_mk_get_organelle_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- make_batch_for_get_organelle.py
