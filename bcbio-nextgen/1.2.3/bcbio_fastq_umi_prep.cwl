class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bcbio_fastq_umi_prep.py_single.cwl
inputs:
- id: cores
  doc: Number of cores to use for parallel bgzip
  type: string
  inputBinding:
    prefix: --cores
- id: tag_one
  doc: Duplex read 1 tag -- bases to trim from 5' end
  type: string
  inputBinding:
    prefix: --tag1
- id: tag_two
  doc: Duplex read 2 tag -- bases to trim from 5' end
  type: string
  inputBinding:
    prefix: --tag2
- id: out_base
  doc: Base name for output files -- you get <base_name>_R1.fq.gz
  type: string
  inputBinding:
    position: 0
- id: read_one_fq
  doc: Input fastq, read 1
  type: string
  inputBinding:
    position: 1
- id: read_two_fq
  doc: Input fastq, read 2
  type: string
  inputBinding:
    position: 2
- id: umi_fq
  doc: Input fastq, UMIs
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_fastq_umi_prep.py
- single
