class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/demux_isoseq_no_genome.py.cwl
inputs:
- id: job_dir
  doc: Job directory (if given, automatically finds required files)
  type: string
  inputBinding:
    prefix: --job_dir
- id: hq_faf_q
  doc: HQ isoform fasta/fastq (overridden by --job_dir if given)
  type: string
  inputBinding:
    prefix: --hq_fafq
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
- id: primer_names
  doc: 'Text file showing primer sample names (default: None)'
  type: string
  inputBinding:
    prefix: --primer_names
- id: output
  doc: Output count filename
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- demux_isoseq_no_genome.py
