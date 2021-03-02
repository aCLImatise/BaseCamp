class: CommandLineTool
id: ppanini_gene_caller.cwl
inputs:
- id: in_contig
  doc: contigs file (fna)
  type: File?
  inputBinding:
    prefix: --contig
- id: in_fast_q
  doc: reads file (fastq)
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_output
  doc: Path for outputs
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_basename
  doc: "the basename for the output files\n[DEFAULT: input file basename]"
  type: File?
  inputBinding:
    prefix: --output-basename
- id: in_uniref
  doc: UniRe90 database
  type: long?
  inputBinding:
    prefix: --uniref
- id: in_resume
  doc: bypass commands if the output files exist
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_threads
  doc: "number of threads/processes\n[DEFAULT: 1]"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_one_contig
  doc: If there is only one contig file for all samples, then this option should be
    provided
  type: boolean?
  inputBinding:
    prefix: --one-contig
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini_gene_caller
