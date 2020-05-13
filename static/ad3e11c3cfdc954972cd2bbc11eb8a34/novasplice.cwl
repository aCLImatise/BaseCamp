class: CommandLineTool
id: novasplice.cwl
inputs:
- id: vcf
  doc: Full path to the sorted vcf file being used
  type: string
  inputBinding:
    prefix: --vcf
- id: zipped_vcf
  doc: Full path to the sorted zipped vcf file being used
  type: string
  inputBinding:
    prefix: --zippedvcf
- id: reference
  doc: Full path to the reference genome being used
  type: string
  inputBinding:
    prefix: --reference
- id: zipped_reference
  doc: Full path to the zipped reference genome being used
  type: string
  inputBinding:
    prefix: --zippedreference
- id: bed
  doc: Full path to the reference exon boundary bed file being used
  type: string
  inputBinding:
    prefix: --bed
- id: chr_lens
  doc: Full path to the chromosome length file being used
  type: string
  inputBinding:
    prefix: --chrlens
- id: percent
  doc: Lower bound percent to call novel splice site
  type: string
  inputBinding:
    prefix: --percent
- id: output
  doc: Path to the output folder to dump simdigree's output to. Default is working
    directory under /novasplice_output
  type: string
  inputBinding:
    prefix: --output
- id: intermediate
  doc: Path to output folder that will hold intermediate files generated, not specific
    to the provided vcf. Especially useful when running NovaSplice on a large number
    of VCFs that all come from the same reference and make use of the same --bed option.
  type: long
  inputBinding:
    prefix: --intermediate
- id: temp
  doc: Full path to an alternative directory to use for temp files. Default is /tmp
  type: string
  inputBinding:
    prefix: --temp
- id: library_name
  doc: Name of the final file novasplice outputs with predictions
  type: string
  inputBinding:
    prefix: --libraryname
outputs: []
cwlVersion: v1.1
baseCommand:
- novasplice
