class: CommandLineTool
id: rtg_mendelian.cwl
inputs:
- id: in_input
  doc: "VCF file containing multi-sample variant\ncalls. Use '-' to read from standard\
    \ input"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "if set, output annotated calls to this VCF\nfile. Use '-' to write to standard\
    \ output"
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_consistent
  doc: "if set, output only consistent calls to this\nVCF file"
  type: File?
  inputBinding:
    prefix: --output-consistent
- id: in_output_inconsistent
  doc: "if set, output only non-Mendelian calls to\nthis VCF file"
  type: File?
  inputBinding:
    prefix: --output-inconsistent
- id: in_template
  doc: SDF containing the reference genome
  type: string?
  inputBinding:
    prefix: --template
- id: in_all_records
  doc: "use all records, regardless of filters\n(Default is to only process records\
    \ where\nFILTER is \".\" or \"PASS\")"
  type: boolean?
  inputBinding:
    prefix: --all-records
- id: in_lenient
  doc: "allow homozygous diploid calls in place of\nhaploid calls and assume missing\
    \ values are\nequal to the reference"
  type: boolean?
  inputBinding:
    prefix: --lenient
- id: in_min_concordance
  doc: "percentage concordance required for consistent\nparentage (Default is 99.0)"
  type: double?
  inputBinding:
    prefix: --min-concordance
- id: in_pedigree
  doc: "genome relationships PED file (Default is to\nextract pedigree information\
    \ from VCF header\nfields)"
  type: File?
  inputBinding:
    prefix: --pedigree
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "if set, output annotated calls to this VCF\nfile. Use '-' to write to standard\
    \ output"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_consistent
  doc: "if set, output only consistent calls to this\nVCF file"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_consistent)
- id: out_output_inconsistent
  doc: "if set, output only non-Mendelian calls to\nthis VCF file"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_inconsistent)
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- mendelian
