class: CommandLineTool
id: snp_sites.cwl
inputs:
- id: in_output_internal_pseudo
  doc: output internal pseudo reference sequence
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_output_multi_default
  doc: output a multi fasta alignment file (default)
  type: File?
  inputBinding:
    prefix: -m
- id: in_output_vcf_file
  doc: output a VCF file
  type: File?
  inputBinding:
    prefix: -v
- id: in_output_phylip_file
  doc: output a phylip file
  type: File?
  inputBinding:
    prefix: -p
- id: in_specify_output_filename
  doc: specify an output filename [STDOUT]
  type: File?
  inputBinding:
    prefix: -o
- id: in_only_output_columns
  doc: only output columns containing exclusively ACGT
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_only_output_count
  doc: only output count of constant sites (suitable for IQ-TREE -fconst) and nothing
    else
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_output_monomorphic_sites
  doc: output monomorphic sites, used for BEAST
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_print_version_exit
  doc: print version and exit
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_rmv_pc_bhv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rmvpcbhV
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_multi_default
  doc: output a multi fasta alignment file (default)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_multi_default)
- id: out_output_vcf_file
  doc: output a VCF file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf_file)
- id: out_output_phylip_file
  doc: output a phylip file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_phylip_file)
- id: out_specify_output_filename
  doc: specify an output filename [STDOUT]
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- snp-sites
