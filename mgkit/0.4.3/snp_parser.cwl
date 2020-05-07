class: CommandLineTool
id: snp_parser.cwl
inputs:
- id: output_file
  doc: 'Ouput file (default: snp_data.pickle)'
  type: string
  inputBinding:
    prefix: --output-file
- id: min_qual
  doc: 'Minimum SNP quality (Phred score) (default: 30)'
  type: long
  inputBinding:
    prefix: --min-qual
- id: min_freq
  doc: 'Minimum allele frequency (default: 0.01)'
  type: long
  inputBinding:
    prefix: --min-freq
- id: min_reads
  doc: 'Minimum number of reads to accept the SNP (default: 4)'
  type: long
  inputBinding:
    prefix: --min-reads
- id: gff_file
  doc: 'GFF file with annotations (default: None)'
  type: string
  inputBinding:
    prefix: --gff-file
- id: vcf_file
  doc: 'Merged VCF file (default: None)'
  type: string
  inputBinding:
    prefix: --vcf-file
- id: reference
  doc: 'Fasta file with the GFF Reference (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: samples_id
  doc: 'the ids of the samples used in the analysis (default: None)'
  type: string
  inputBinding:
    prefix: --samples-id
- id: cov_suff
  doc: 'Per sample coverage suffix in the GFF (default: _cov)'
  type: string
  inputBinding:
    prefix: --cov-suff
- id: bcf_tools_vcf
  doc: 'bcftools call was used to produce the VCF file (default: False)'
  type: boolean
  inputBinding:
    prefix: --bcftools-vcf
- id: verbose
  doc: 'more verbose - includes debug messages (default: 20)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'less verbose - only error and critical messages (default: None)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: cite
  doc: Show citation for the framework
  type: boolean
  inputBinding:
    prefix: --cite
- id: manual
  doc: Show the script manual
  type: boolean
  inputBinding:
    prefix: --manual
outputs: []
cwlVersion: v1.1
baseCommand:
- snp_parser
