class: CommandLineTool
id: demux_isoseq2_no_genome.py.cwl
inputs:
- id: in_job_dir
  doc: "Job directory (if given, automatically finds required\nfiles)"
  type: Directory?
  inputBinding:
    prefix: --job_dir
- id: in_hq_fast_q
  doc: HQ isoform fastq (overridden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --hq_fastq
- id: in_cluster_csv
  doc: Cluster report CSV (overridden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --cluster_csv
- id: in_classify_csv
  doc: Classify report CSV (overriden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --classify_csv
- id: in_output
  doc: "Output count filename\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output count filename\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- demux_isoseq2_no_genome.py
