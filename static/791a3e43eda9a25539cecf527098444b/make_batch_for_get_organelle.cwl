class: CommandLineTool
id: make_batch_for_get_organelle.py.cwl
inputs:
- id: o
  doc: output base name for each sample
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: 'Other arguments that get_organelle_from_reads.py would take.Use double quotation
    marks to include all the argumentsExample: "-s plastome.fasta -a mitochondrial.fasta
    -F embplant_pt -w 105"'
  type: string
  inputBinding:
    prefix: -p
- id: all
  doc: 'Choose to make command for all samples including samples with results.Default:
    skip those with results.'
  type: boolean
  inputBinding:
    prefix: --all
- id: annotated
  doc: 'Choose to make annotated command for skipped commands.Default: False.'
  type: boolean
  inputBinding:
    prefix: --annotated
- id: strict
  doc: 'Choose to only search for the fastq with the same base name with the directory
    (*/*_1.fq). Default: relaxed searching.'
  type: boolean
  inputBinding:
    prefix: --strict
outputs: []
cwlVersion: v1.1
baseCommand:
- make_batch_for_get_organelle.py
