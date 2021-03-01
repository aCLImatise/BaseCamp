class: CommandLineTool
id: metapi_init.cwl
inputs:
- id: in_workdir
  doc: 'project workdir, default: ./ (default: ./)'
  type: string?
  inputBinding:
    prefix: --workdir
- id: in_samples
  doc: "desired input:\nsamples list, tsv format required.\nif begin from trimming,\
    \ rmhost, or assembly:\nif it is fastq:\nthe header is: [id, fq1, fq2]\nif it\
    \ is sra:\nthe header is: [id, sra]\nif begin from simulate:\nthe header is: [id,\
    \ genome, abundance, reads_num, model]"
  type: long?
  inputBinding:
    prefix: --samples
- id: in_begin
  doc: "pipeline starting point (default: trimming)\n"
  type: string?
  inputBinding:
    prefix: --begin
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metapi:1.0.5--py_0
cwlVersion: v1.1
baseCommand:
- metapi
- init
