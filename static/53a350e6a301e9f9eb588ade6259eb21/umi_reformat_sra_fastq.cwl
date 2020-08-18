class: CommandLineTool
id: ../../../umi_reformat_sra_fastq.cwl
inputs:
- id: input
  doc: 'the input fastq file. (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'the output fastq file containing reads that are not duplicates (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: pcr_duplicate
  doc: 'The output fastq file containing PCR duplicates (default: None)'
  type: string
  inputBinding:
    prefix: --pcr-duplicate
- id: reads_with_improper_umi
  doc: 'The output fastq file containing reads with improper UMIs. The default is
    to throw away these reads. This is for debugging purposes (default: )'
  type: string
  inputBinding:
    prefix: --reads-with-improper-umi
- id: errors_allowed
  doc: 'Setting it to >=1 allows errors in UMIs. Otherwise, no errors are allowed
    in UMIs. (default: 0)'
  type: string
  inputBinding:
    prefix: --errors-allowed
- id: verbose
  doc: 'Also include detailed run info (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: umi_pattern_five
  doc: "Set the UMI pattern at the 5' end. Use ACGT for fixed nt and N for variable\
    \ nt in UMI. If there are multiple patterns, separate them using comma (default:\
    \ NNNCGANNNTACNNN,NNNATCNNNAGTNNN)"
  type: string
  inputBinding:
    prefix: --umi-pattern-5
- id: umi_pattern_three
  doc: "Set the UMI pattern at the 3' end. Use ACGT for fixed nt and N for variable\
    \ nt in UMI. If there are multiple patterns, separate them using comma (default:\
    \ NNNGTCNNNTAGNNN)"
  type: string
  inputBinding:
    prefix: --umi-pattern-3
- id: debug
  doc: 'More output for debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_reformat_sra_fastq
