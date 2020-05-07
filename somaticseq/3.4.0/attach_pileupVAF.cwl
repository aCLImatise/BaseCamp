class: CommandLineTool
id: attach_pileupVAF.py.cwl
inputs:
- id: my_vcf_file
  doc: 'My VCF (default: None)'
  type: string
  inputBinding:
    prefix: --my-vcf-file
- id: normal_sample_name
  doc: 'Normal Sample Name (default: NORMAL)'
  type: string
  inputBinding:
    prefix: --normal-sample-name
- id: tumor_sample_name
  doc: 'Tumor Sample Name (default: TUMOR)'
  type: string
  inputBinding:
    prefix: --tumor-sample-name
- id: normal_pile_up_file
  doc: 'Normal VCF File (default: None)'
  type: string
  inputBinding:
    prefix: --normal-pileup-file
- id: tumor_pile_up_file
  doc: 'Tumor VCF File (default: None)'
  type: string
  inputBinding:
    prefix: --tumor-pileup-file
- id: reference_fast_a_fai
  doc: 'Use the fasta.fai file to get the valid contigs (default: None)'
  type: string
  inputBinding:
    prefix: --reference-fasta-fai
- id: reference_fast_a_dict
  doc: 'Use the reference dict file to get the valid contigs (default: None)'
  type: string
  inputBinding:
    prefix: --reference-fasta-dict
- id: pile_up_variant_allele_frequency
  doc: 'Variant Allele Frequency calculated from pileup file (default: False)'
  type: boolean
  inputBinding:
    prefix: --pileup-variant-allele-frequency
- id: pile_up_dp4
  doc: 'DP4 from pileup file (default: False)'
  type: boolean
  inputBinding:
    prefix: --pileup-DP4
- id: output_file
  doc: 'Output File Name (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- attach_pileupVAF.py
