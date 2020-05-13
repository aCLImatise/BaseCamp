class: CommandLineTool
id: rtg_mendelian.cwl
inputs:
- id: input
  doc: VCF file containing multi-sample variant calls. Use '-' to read from standard
    input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: if set, output annotated calls to this VCF file. Use '-' to write to standard
    output
  type: File
  inputBinding:
    prefix: --output
- id: output_consistent
  doc: if set, output only consistent calls to this VCF file
  type: File
  inputBinding:
    prefix: --output-consistent
- id: output_inconsistent
  doc: if set, output only non-Mendelian calls to this VCF file
  type: File
  inputBinding:
    prefix: --output-inconsistent
- id: template
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --template
- id: all_records
  doc: use all records, regardless of filters (Default is to only process records
    where FILTER is "." or "PASS")
  type: boolean
  inputBinding:
    prefix: --all-records
- id: lenient
  doc: allow homozygous diploid calls in place of haploid calls and assume missing
    values are equal to the reference
  type: boolean
  inputBinding:
    prefix: --lenient
- id: min_concordance
  doc: percentage concordance required for consistent parentage (Default is 99.0)
  type: double
  inputBinding:
    prefix: --min-concordance
- id: pedigree
  doc: genome relationships PED file (Default is to extract pedigree information from
    VCF header fields)
  type: File
  inputBinding:
    prefix: --pedigree
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- mendelian
