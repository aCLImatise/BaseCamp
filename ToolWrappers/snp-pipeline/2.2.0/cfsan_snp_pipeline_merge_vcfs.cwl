class: CommandLineTool
id: ../../../cfsan_snp_pipeline_merge_vcfs.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_vcf_name
  doc: "File name of the vcf files which must exist in each of\nthe sample directories\
    \ (default: consensus.vcf)"
  type: File
  inputBinding:
    prefix: --vcfname
- id: in_output
  doc: "Output file. Relative or absolute path to the merged\nmulti-vcf file (default:\
    \ snpma.vcf)"
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the merged\nmulti-vcf file (default:\
    \ snpma.vcf)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- merge_vcfs
