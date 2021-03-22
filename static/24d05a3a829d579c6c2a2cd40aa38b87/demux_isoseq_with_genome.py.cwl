class: CommandLineTool
id: demux_isoseq_with_genome.py.cwl
inputs:
- id: in_job_dir
  doc: "Job directory (if given, automatically finds required\nfiles)"
  type: Directory?
  inputBinding:
    prefix: --job_dir
- id: in_mapped_faf_q
  doc: mapped fasta/fastq (overridden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --mapped_fafq
- id: in_read_stat
  doc: read_stat txt (overridden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --read_stat
- id: in_classify_csv
  doc: Classify report CSV (overriden by --job_dir if given)
  type: string?
  inputBinding:
    prefix: --classify_csv
- id: in_primer_names
  doc: 'Text file showing primer sample names (default: None)'
  type: File?
  inputBinding:
    prefix: --primer_names
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
- demux_isoseq_with_genome.py
