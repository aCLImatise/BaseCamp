class: CommandLineTool
id: bcbio_fastq_umi_prep.py_dragen.cwl
inputs:
- id: in_outdir
  doc: Output directory to write UMI prepped fastqs
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_files
  doc: All fastq files to pair and process
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory to write UMI prepped fastqs
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcbio-nextgen:1.2.7--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bcbio_fastq_umi_prep.py
- dragen
