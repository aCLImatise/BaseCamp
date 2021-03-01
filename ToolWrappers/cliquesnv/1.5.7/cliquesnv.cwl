class: CommandLineTool
id: cliquesnv.cwl
inputs:
- id: in__run_one
  doc: '-- run one of predefined methods. Methods are: snv-pacbio, snv-illumina, snv-pacbio-vc,
    snv-illumina-vc'
  type: string?
  inputBinding:
    prefix: -m
- id: in_in
  doc: /usr/name/tmp/reads.sam -- input file
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_outdir
  doc: /usr/name/tmp/ -- folder with output.
  type: Directory?
  inputBinding:
    prefix: -outDir
- id: in_threads
  doc: -- how many threads to use in parallel. Usually just the number of cores is
    the best choice
  type: long?
  inputBinding:
    prefix: -threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: /usr/name/tmp/ -- folder with output.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cliquesnv:1.5.7--0
cwlVersion: v1.1
baseCommand:
- cliquesnv
