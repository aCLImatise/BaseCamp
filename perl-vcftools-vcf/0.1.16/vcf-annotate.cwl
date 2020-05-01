#!/usr/bin/env cwl-runner

baseCommand:
- vcf-annotate
class: CommandLineTool
cwlVersion: v1.0
id: vcf-annotate
inputs:
- doc: 'The tabix indexed file with the annotations: CHR\tFROM[\tTO][\tVALUE]+.'
  id: annotations
  inputBinding:
    prefix: --annotations
  type: File
- doc: The list of columns in the annotation file, e.g. CHROM,FROM,TO,-,QUAL,INFO/STR,INFO/GN.
    The dash in this example indicates that the third column should be ignored. If
    TO is not present, it is assumed that TO equals to FROM. When REF and ALT columns
    are present, only matching lines are annotated.
  id: columns
  inputBinding:
    prefix: --columns
  type: string
- doc: <file|string>     Header annotation, e.g. key=INFO,ID=HM2,Number=0,Type=Flag,Description='HapMap2
    membership'. The descriptions can be read from a file, one annotation per line.
  id: description
  inputBinding:
    prefix: --description
  type: boolean
- doc: (Re)Calculate AC and AN tags
  id: fill_ac_an
  inputBinding:
    prefix: --fill-AC-AN
  type: boolean
- doc: (Re)Calculate HWE, AC and AN tags
  id: fill_h_we
  inputBinding:
    prefix: --fill-HWE
  type: boolean
- doc: (Re)Calculate Inbreeding Coefficient F, HWE, AC and AN
  id: fill_icf
  inputBinding:
    prefix: --fill-ICF
  type: boolean
- doc: Annotate INFO/TYPE with snp,del,ins,mnp,complex
  id: fill_type
  inputBinding:
    prefix: --fill-type
  type: boolean
- doc: <file|list>            Apply filters, list is in the format flt1=value/flt2/flt3=value/etc.
    If argument to -f is a file, user-defined filters be applied. See User Defined
    Filters below.
  id: filter
  inputBinding:
    prefix: --filter
  type: boolean
- doc: Remove lines with FILTER anything else than PASS or "."
  id: hard_filter
  inputBinding:
    prefix: --hard-filter
  type: boolean
- doc: Make REF and ALT alleles more compact if possible (e.g. TA,TAA -> T,TA).
  id: normalize_alleles
  inputBinding:
    prefix: --normalize-alleles
  type: boolean
- doc: Comma-separated list of tags to be removed (e.g. ID,INFO/DP,FORMAT/DP,FILTER).
  id: remove
  inputBinding:
    prefix: --remove
  type: string
