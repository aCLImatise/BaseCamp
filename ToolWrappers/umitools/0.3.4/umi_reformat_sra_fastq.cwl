class: CommandLineTool
id: umi_reformat_sra_fastq.cwl
inputs:
- id: in_input
  doc: 'the input fastq file. (default: None)'
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "the output fastq file containing reads that are not\nduplicates (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_pcr_duplicate
  doc: "The output fastq file containing PCR duplicates\n(default: None)"
  type: File?
  inputBinding:
    prefix: --pcr-duplicate
- id: in_reads_with_improper_umi
  doc: "The output fastq file containing reads with improper\nUMIs. The default is\
    \ to throw away these reads. This\nis for debugging purposes (default: )"
  type: File?
  inputBinding:
    prefix: --reads-with-improper-umi
- id: in_errors_allowed
  doc: "Setting it to >=1 allows errors in UMIs. Otherwise, no\nerrors are allowed\
    \ in UMIs. (default: 0)"
  type: long?
  inputBinding:
    prefix: --errors-allowed
- id: in_verbose
  doc: 'Also include detailed run info (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_umi_pattern_five
  doc: "Set the UMI pattern at the 5' end. Use ACGT for fixed\nnt and N for variable\
    \ nt in UMI. If there are multiple\npatterns, separate them using comma (default:\n\
    NNNCGANNNTACNNN,NNNATCNNNAGTNNN)"
  type: long?
  inputBinding:
    prefix: --umi-pattern-5
- id: in_umi_pattern_three
  doc: "Set the UMI pattern at the 3' end. Use ACGT for fixed\nnt and N for variable\
    \ nt in UMI. If there are multiple\npatterns, separate them using comma (default:\n\
    NNNGTCNNNTAGNNN)"
  type: long?
  inputBinding:
    prefix: --umi-pattern-3
- id: in_debug
  doc: 'More output for debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "the output fastq file containing reads that are not\nduplicates (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_pcr_duplicate
  doc: "The output fastq file containing PCR duplicates\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_pcr_duplicate)
- id: out_reads_with_improper_umi
  doc: "The output fastq file containing reads with improper\nUMIs. The default is\
    \ to throw away these reads. This\nis for debugging purposes (default: )"
  type: File?
  outputBinding:
    glob: $(inputs.in_reads_with_improper_umi)
hints: []
cwlVersion: v1.1
baseCommand:
- umi_reformat_sra_fastq
