class: CommandLineTool
id: varscan_mpileup2indel.cwl
inputs:
- id: in_min_coverage
  doc: Minimum read depth at a position to make a call [8]
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_min_reads_two
  doc: Minimum supporting reads at a position to call variants [2]
  type: boolean?
  inputBinding:
    prefix: --min-reads2
- id: in_min_avg_qual
  doc: Minimum base quality at a position to count a read [15]
  type: boolean?
  inputBinding:
    prefix: --min-avg-qual
- id: in_min_var_freq
  doc: Minimum variant allele frequency threshold [0.01]
  type: boolean?
  inputBinding:
    prefix: --min-var-freq
- id: in_min_freq_for_hom
  doc: Minimum frequency to call homozygote [0.75]
  type: boolean?
  inputBinding:
    prefix: --min-freq-for-hom
- id: in_p_value
  doc: Default p-value threshold for calling variants [99e-02]
  type: boolean?
  inputBinding:
    prefix: --p-value
- id: in_strand_filter
  doc: variants with >90% support on one strand [1]
  type: long?
  inputBinding:
    prefix: --strand-filter
- id: in_output_vcf
  doc: If set to 1, outputs in VCF format
  type: boolean?
  inputBinding:
    prefix: --output-vcf
- id: in_vcf_sample_list
  doc: For VCF output, a list of sample names in order, one per line
  type: boolean?
  inputBinding:
    prefix: --vcf-sample-list
- id: in_variants
  doc: Report only variant (SNP/indel) positions [0]
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pile_up_two_cns
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_pile_up
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- mpileup2indel
