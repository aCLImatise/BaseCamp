class: CommandLineTool
id: attach_pileupVAF.py.cwl
inputs:
- id: in_my_vcf_file
  doc: 'My VCF (default: None)'
  type: File?
  inputBinding:
    prefix: --my-vcf-file
- id: in_normal_sample_name
  doc: 'Normal Sample Name (default: NORMAL)'
  type: string?
  inputBinding:
    prefix: --normal-sample-name
- id: in_tumor_sample_name
  doc: 'Tumor Sample Name (default: TUMOR)'
  type: string?
  inputBinding:
    prefix: --tumor-sample-name
- id: in_normal_pile_up_file
  doc: 'Normal VCF File (default: None)'
  type: File?
  inputBinding:
    prefix: --normal-pileup-file
- id: in_tumor_pile_up_file
  doc: 'Tumor VCF File (default: None)'
  type: File?
  inputBinding:
    prefix: --tumor-pileup-file
- id: in_reference_fast_a_fai
  doc: "Use the fasta.fai file to get the valid contigs\n(default: None)"
  type: File?
  inputBinding:
    prefix: --reference-fasta-fai
- id: in_reference_fast_a_dict
  doc: "Use the reference dict file to get the valid contigs\n(default: None)"
  type: File?
  inputBinding:
    prefix: --reference-fasta-dict
- id: in_pile_up_variant_allele_frequency
  doc: "Variant Allele Frequency calculated from pileup file\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --pileup-variant-allele-frequency
- id: in_pile_up_dp_four
  doc: 'DP4 from pileup file (default: False)'
  type: boolean?
  inputBinding:
    prefix: --pileup-DP4
- id: in_output_file
  doc: "Output File Name (default: None)\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output File Name (default: None)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- attach_pileupVAF.py
