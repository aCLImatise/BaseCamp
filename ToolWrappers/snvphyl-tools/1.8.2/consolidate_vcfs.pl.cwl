class: CommandLineTool
id: consolidate_vcfs.pl.cwl
inputs:
- id: in_snv_abundance_ratio
  doc: /opt/bcftools/bcftools
  type: long
  inputBinding:
    prefix: --snv-abundance-ratio
- id: in_vcf_split
  doc: "[REQUIRED]\nMultiple list of key/value pair. Multiple .gz files can be input.\n\
    Example with 3 gz files: --vcfsplit 'name=/path/vcf1.gz' --vcfsplit\n'name=/path/vcf2.gz'\
    \ --vcfsplit 'name=/path/vcf3.gz'."
  type: boolean
  inputBinding:
    prefix: --vcfsplit
- id: in_m_pile_up
  doc: "[REQUIRED]\nMultiple list of key/value pair. Multiple .gz files can be input.\n\
    Example with 3 gz files: --mpileup 'name=/path/vcf1.gz' --mpileup\n'name=/path/vcf2.gz'\
    \ --mpileup 'name=/path/vcf3.gz'."
  type: boolean
  inputBinding:
    prefix: --mpileup
- id: in_coverage_cut_off
  doc: "[REQUIRED]\nThe cutoff for coverage to include a reference base (default:\
    \ 1)."
  type: boolean
  inputBinding:
    prefix: --coverage-cutoff
- id: in_min_mean_mapping
  doc: "[REQUIRED]\nMean mapping quality of observed alternate alleles."
  type: boolean
  inputBinding:
    prefix: --min-mean-mapping
- id: in_v_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- consolidate_vcfs.pl
