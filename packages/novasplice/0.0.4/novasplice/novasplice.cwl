class: CommandLineTool
id: novasplice.cwl
inputs:
- id: in_vcf
  doc: Full path to the sorted vcf file being used
  type: File
  inputBinding:
    prefix: --vcf
- id: in_zipped_vcf
  doc: Full path to the sorted zipped vcf file being used
  type: File
  inputBinding:
    prefix: --zippedvcf
- id: in_reference
  doc: Full path to the reference genome being used
  type: File
  inputBinding:
    prefix: --reference
- id: in_zipped_reference
  doc: Full path to the zipped reference genome being used
  type: File
  inputBinding:
    prefix: --zippedreference
- id: in_bed
  doc: "Full path to the reference exon boundary bed file\nbeing used"
  type: File
  inputBinding:
    prefix: --bed
- id: in_chr_lens
  doc: Full path to the chromosome length file being used
  type: long
  inputBinding:
    prefix: --chrlens
- id: in_percent
  doc: Lower bound percent to call novel splice site
  type: string
  inputBinding:
    prefix: --percent
- id: in_output
  doc: "Path to the output folder to dump simdigree's output\nto. Default is working\
    \ directory under\n/novasplice_output"
  type: File
  inputBinding:
    prefix: --output
- id: in_intermediate
  doc: "Path to output folder that will hold intermediate\nfiles generated, not specific\
    \ to the provided vcf.\nEspecially useful when running NovaSplice on a large\n\
    number of VCFs that all come from the same reference\nand make use of the same\
    \ --bed option."
  type: long
  inputBinding:
    prefix: --intermediate
- id: in_temp
  doc: "Full path to an alternative directory to use for temp\nfiles. Default is /tmp"
  type: File
  inputBinding:
    prefix: --temp
- id: in_library_name
  doc: "Name of the final file novasplice outputs with\npredictions\n"
  type: File
  inputBinding:
    prefix: --libraryname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to the output folder to dump simdigree's output\nto. Default is working\
    \ directory under\n/novasplice_output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- novasplice
