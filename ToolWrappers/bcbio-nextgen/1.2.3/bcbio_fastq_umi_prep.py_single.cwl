class: CommandLineTool
id: bcbio_fastq_umi_prep.py_single.cwl
inputs:
- id: in_cores
  doc: Number of cores to use for parallel bgzip
  type: long?
  inputBinding:
    prefix: --cores
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
- id: in_out_base
  doc: "Base name for output files -- you get\n<base_name>_R1.fq.gz"
  type: string
  inputBinding:
    position: 0
- id: in_read_one_fq
  doc: Input fastq, read 1
  type: long
  inputBinding:
    position: 1
- id: in_read_two_fq
  doc: Input fastq, read 2
  type: long
  inputBinding:
    position: 2
- id: in_umi_fq
  doc: Input fastq, UMIs
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_fastq_umi_prep.py
- single
