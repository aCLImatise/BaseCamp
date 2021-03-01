class: CommandLineTool
id: cfsan_snp_pipeline_collect_metrics.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_output
  doc: "Output file. Relative or absolute path to the metrics\nfile (default: metrics)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_max_snps
  doc: "Maximum allowed number of SNPs per sample (default:\n-1)"
  type: long?
  inputBinding:
    prefix: --maxsnps
- id: in_file_name_consensus_fasta
  doc: "File name of the consensus fasta file which must exist\nin the sample directory\
    \ (default: consensus.fasta)"
  type: File?
  inputBinding:
    prefix: -c
- id: in_file_name_fasta
  doc: "File name of the consensus preserved fasta file which\nmust exist in the sample\
    \ directory (default:\nconsensus_preserved.fasta)"
  type: File?
  inputBinding:
    prefix: -C
- id: in_file_name_consensus_vcf
  doc: "File name of the consensus vcf file which must exist\nin the sample directory\
    \ (default: consensus.vcf)"
  type: File?
  inputBinding:
    prefix: -v
- id: in_file_name_vcf
  doc: "File name of the consensus preserved vcf file which\nmust exist in the sample\
    \ directory (default:\nconsensus_preserved.vcf)"
  type: File?
  inputBinding:
    prefix: -V
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_sample_dir
  doc: Relative or absolute directory of the sample
  type: string
  inputBinding:
    position: 0
- id: in_reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the metrics\nfile (default: metrics)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- collect_metrics
