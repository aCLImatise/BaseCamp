class: CommandLineTool
id: haystac_sample.cwl
inputs:
- id: in_output
  doc: Path to the sample output directory
  type: File?
  inputBinding:
    prefix: --output
- id: in_fast_q
  doc: Single-end fastq input file (optionally compressed).
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_fast_q_r_one
  doc: Paired-end forward strand (R1) fastq input file.
  type: File?
  inputBinding:
    prefix: --fastq-r1
- id: in_fast_q_r_two
  doc: Paired-end reverse strand (R2) fastq input file.
  type: File?
  inputBinding:
    prefix: --fastq-r2
- id: in_sra
  doc: Download fastq input from the SRA database
  type: string?
  inputBinding:
    prefix: --sra
- id: in_collapse
  doc: "Collapse overlapping paired-end reads, e.g. for aDNA\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --collapse
- id: in_trim_adapters
  doc: "Automatically trim sequencing adapters from fastq\ninput (default: True)"
  type: boolean?
  inputBinding:
    prefix: --trim-adapters
- id: in_cores
  doc: 'Maximum number of CPU cores to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_mem
  doc: 'Maximum memory (MB) to use (default: 16012)'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  inputBinding:
    prefix: --unlock
- id: in_debug
  doc: 'Enable debugging mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_snake_make
  doc: "'<json>'  Pass additional flags to the `snakemake` scheduler."
  type: boolean?
  inputBinding:
    prefix: --snakemake
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the sample output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_unlock
  doc: "Unlock the output directory following a crash or hard\nrestart (default: False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_unlock)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haystac:0.3.2--py36_0
cwlVersion: v1.1
baseCommand:
- haystac
- sample
