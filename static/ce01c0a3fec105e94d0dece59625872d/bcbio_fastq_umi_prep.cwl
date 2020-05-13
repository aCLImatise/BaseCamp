class: CommandLineTool
id: bcbio_fastq_umi_prep.py_single.cwl
inputs:
- id: out_base
  doc: Base name for output files -- you get <base_name>_R1.fq.gz
  type: string
  inputBinding:
    position: 0
- id: read_1_fq
  doc: Input fastq, read 1
  type: string
  inputBinding:
    position: 1
- id: read_2_fq
  doc: Input fastq, read 2
  type: string
  inputBinding:
    position: 2
- id: umi_fq
  doc: Input fastq, UMIs
  type: string
  inputBinding:
    position: 3
- id: cores
  doc: Number of cores to use for parallel bgzip
  type: string
  inputBinding:
    prefix: --cores
- id: tag1
  doc: Duplex read 1 tag -- bases to trim from 5' end
  type: string
  inputBinding:
    prefix: --tag1
- id: tag2
  doc: Duplex read 2 tag -- bases to trim from 5' end
  type: string
  inputBinding:
    prefix: --tag2
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_fastq_umi_prep.py
- single
