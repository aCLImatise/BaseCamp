class: CommandLineTool
id: snp_parser.cwl
inputs:
- id: in_output_file
  doc: 'Ouput file (default: snp_data.pickle)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_min_qual
  doc: 'Minimum SNP quality (Phred score) (default: 30)'
  type: long?
  inputBinding:
    prefix: --min-qual
- id: in_min_freq
  doc: 'Minimum allele frequency (default: 0.01)'
  type: long?
  inputBinding:
    prefix: --min-freq
- id: in_min_reads
  doc: 'Minimum number of reads to accept the SNP (default: 4)'
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_gff_file
  doc: 'GFF file with annotations (default: None)'
  type: File?
  inputBinding:
    prefix: --gff-file
- id: in_vcf_file
  doc: 'Merged VCF file (default: None)'
  type: File?
  inputBinding:
    prefix: --vcf-file
- id: in_reference
  doc: 'Fasta file with the GFF Reference (default: None)'
  type: File?
  inputBinding:
    prefix: --reference
- id: in_samples_id
  doc: "the ids of the samples used in the analysis (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --samples-id
- id: in_cov_suff
  doc: 'Per sample coverage suffix in the GFF (default: _cov)'
  type: string?
  inputBinding:
    prefix: --cov-suff
- id: in_bcf_tools_vcf
  doc: "bcftools call was used to produce the VCF file\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --bcftools-vcf
- id: in_verbose
  doc: 'more verbose - includes debug messages (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "less verbose - only error and critical messages\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_cite
  doc: Show citation for the framework
  type: boolean?
  inputBinding:
    prefix: --cite
- id: in_manual
  doc: Show the script manual
  type: boolean?
  inputBinding:
    prefix: --manual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Ouput file (default: snp_data.pickle)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- snp_parser
