class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/demux_isoseq2_no_genome.py.cwl
inputs:
- id: job_dir
  doc: Job directory (if given, automatically finds required files)
  type: string
  inputBinding:
    prefix: --job_dir
- id: hq_fast_q
  doc: HQ isoform fastq (overridden by --job_dir if given)
  type: string
  inputBinding:
    prefix: --hq_fastq
- id: cluster_csv
  doc: Cluster report CSV (overridden by --job_dir if given)
  type: string
  inputBinding:
    prefix: --cluster_csv
- id: classify_csv
  doc: Classify report CSV (overriden by --job_dir if given)
  type: string
  inputBinding:
    prefix: --classify_csv
- id: output
  doc: Output count filename
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- demux_isoseq2_no_genome.py
