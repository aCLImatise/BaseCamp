class: CommandLineTool
id: bcbio_fastq_umi_prep.py_autopair.cwl
inputs:
- id: in_cores
  doc: Number of cores, allowing running samples in parallel
  type: long?
  inputBinding:
    prefix: --cores
- id: in_outdir
  doc: Output directory to write UMI prepped fastqs
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_tag_one
  doc: Duplex read 1 tag -- bases to trim from 5' end
  type: long?
  inputBinding:
    prefix: --tag1
- id: in_tag_two
  doc: Duplex read 2 tag -- bases to trim from 5' end
  type: long?
  inputBinding:
    prefix: --tag2
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
  dockerPull: quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- bcbio_fastq_umi_prep.py
- autopair
