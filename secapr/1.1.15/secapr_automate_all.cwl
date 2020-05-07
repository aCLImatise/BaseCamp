class: CommandLineTool
id: secapr_automate_all.cwl
inputs:
- id: input
  doc: The directory containing cleaned fastq files
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory where all intermediate and final data files will be stored
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: Provide a reference library (FASTA) containing sequences for the genes of interest
    (required to find contigs matching targeted regions).
  type: string
  inputBinding:
    prefix: --reference
- id: setting
  doc: The setting you want to run SECAPR on. "relaxed" uses very non-restrictive
    default values (use when samples are expected to differ considerably from provided
    reference or are covering wide evolutionary range, e.g. different families or
    orders). "conservative" is very restrictive and can be used when samples are closely
    related and match provided reference very well.
  type: string
  inputBinding:
    prefix: --setting
- id: assembler
  doc: The assembler to use for de-novo assembly (default=abyss).
  type: string
  inputBinding:
    prefix: --assembler
- id: cores
  doc: Number of computational cores for parallelization of computation.
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- automate_all
