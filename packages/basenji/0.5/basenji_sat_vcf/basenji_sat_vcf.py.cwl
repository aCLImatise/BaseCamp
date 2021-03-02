class: CommandLineTool
id: basenji_sat_vcf.py.cwl
inputs:
- id: in_nucleotides_downstream_mutate
  doc: "Nucleotides downstream of center sequence to mutate\n[Default: 0]"
  type: long?
  inputBinding:
    prefix: -d
- id: in_figure_width
  doc: 'Figure width [Default: 20]'
  type: long?
  inputBinding:
    prefix: -f
- id: in_fone
  doc: Genome FASTA which which major allele sequences will be
  type: long?
  inputBinding:
    prefix: --f1
- id: in_output_directory
  doc: 'Output directory [Default: sat_vcf]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rc
  doc: "Ensemble forward and reverse complement predictions\n[Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_stats
  doc: 'Comma-separated list of stats to save. [Default: sum]'
  type: string?
  inputBinding:
    prefix: --stats
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table
  type: File?
  inputBinding:
    prefix: -t
- id: in_format
  doc: -u MUT_UP           Nucleotides upstream of center sequence to mutate
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: sat_vcf]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_sat_vcf.py
