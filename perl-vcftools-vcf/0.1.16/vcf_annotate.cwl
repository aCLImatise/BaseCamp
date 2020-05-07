class: CommandLineTool
id: vcf_annotate.cwl
inputs:
- id: annotations
  doc: 'The tabix indexed file with the annotations: CHR\tFROM[\tTO][\tVALUE]+.'
  type: File
  inputBinding:
    prefix: --annotations
- id: columns
  doc: The list of columns in the annotation file, e.g. CHROM,FROM,TO,-,QUAL,INFO/STR,INFO/GN.
    The dash in this example indicates that the third column should be ignored. If
    TO is not present, it is assumed that TO equals to FROM. When REF and ALT columns
    are present, only matching lines are annotated.
  type: string
  inputBinding:
    prefix: --columns
- id: description
  doc: <file|string>     Header annotation, e.g. key=INFO,ID=HM2,Number=0,Type=Flag,Description='HapMap2
    membership'. The descriptions can be read from a file, one annotation per line.
  type: boolean
  inputBinding:
    prefix: --description
- id: fill_ac_an
  doc: (Re)Calculate AC and AN tags
  type: boolean
  inputBinding:
    prefix: --fill-AC-AN
- id: fill_h_we
  doc: (Re)Calculate HWE, AC and AN tags
  type: boolean
  inputBinding:
    prefix: --fill-HWE
- id: fill_icf
  doc: (Re)Calculate Inbreeding Coefficient F, HWE, AC and AN
  type: boolean
  inputBinding:
    prefix: --fill-ICF
- id: fill_type
  doc: Annotate INFO/TYPE with snp,del,ins,mnp,complex
  type: boolean
  inputBinding:
    prefix: --fill-type
- id: filter
  doc: <file|list>            Apply filters, list is in the format flt1=value/flt2/flt3=value/etc.
    If argument to -f is a file, user-defined filters be applied. See User Defined
    Filters below.
  type: boolean
  inputBinding:
    prefix: --filter
- id: hard_filter
  doc: Remove lines with FILTER anything else than PASS or "."
  type: boolean
  inputBinding:
    prefix: --hard-filter
- id: normalize_alleles
  doc: Make REF and ALT alleles more compact if possible (e.g. TA,TAA -> T,TA).
  type: boolean
  inputBinding:
    prefix: --normalize-alleles
- id: remove
  doc: Comma-separated list of tags to be removed (e.g. ID,INFO/DP,FORMAT/DP,FILTER).
  type: string
  inputBinding:
    prefix: --remove
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-annotate
