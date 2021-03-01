class: CommandLineTool
id: secapr_automate_all.cwl
inputs:
- id: in_input
  doc: The directory containing cleaned fastq files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The output directory where all intermediate and final\ndata files will be\
    \ stored"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Provide a reference library (FASTA) containing\nsequences for the genes of\
    \ interest (required to find\ncontigs matching targeted regions)."
  type: string?
  inputBinding:
    prefix: --reference
- id: in_setting
  doc: "The setting you want to run SECAPR on. \"relaxed\" uses\nvery non-restrictive\
    \ default values (use when samples\nare expected to differ considerably from provided\n\
    reference or are covering wide evolutionary range,\ne.g. different families or\
    \ orders). \"conservative\" is\nvery restrictive and can be used when samples\
    \ are\nclosely related and match provided reference very\nwell."
  type: string?
  inputBinding:
    prefix: --setting
- id: in_assembler
  doc: "The assembler to use for de-novo assembly\n(default=abyss)."
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_cores
  doc: "Number of computational cores for parallelization of\ncomputation.\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory where all intermediate and final\ndata files will be\
    \ stored"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- secapr
- automate_all
