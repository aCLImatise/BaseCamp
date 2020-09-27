class: CommandLineTool
id: svtk_standardize.cwl
inputs:
- id: in_prefix
  doc: "If provided, variant names will be overwritten with\nthis prefix."
  type: string
  inputBinding:
    prefix: --prefix
- id: in_include_reference_sites
  doc: "Include records where all samples are called 0/0 or\n./."
  type: boolean
  inputBinding:
    prefix: --include-reference-sites
- id: in_standardize_r
  doc: "Path to python file with custom standardizer\ndefinition. (Not yet supported.)"
  type: File
  inputBinding:
    prefix: --standardizer
- id: in_contigs
  doc: "Reference fasta index (.fai). If provided, contigs in\nindex will be used\
    \ in VCF header. Otherwise all GRCh37\ncontigs will be used in header. Variants\
    \ on contigs\nnot in provided list will be removed."
  type: long
  inputBinding:
    prefix: --contigs
- id: in_min_size
  doc: Minimum SV size to report [50].
  type: long
  inputBinding:
    prefix: --min-size
- id: in_call_null_sites
  doc: "Call sites with null genotypes (./.). Generally useful\nwhen an algorithm\
    \ has been run on a single sample and\nhas only reported variant sites.\n"
  type: boolean
  inputBinding:
    prefix: --call-null-sites
- id: in_vcf
  doc: Raw VCF.
  type: string
  inputBinding:
    position: 0
- id: in_f_out
  doc: Standardized VCF.
  type: string
  inputBinding:
    position: 1
- id: in_source
  doc: Source algorithm. [delly,lumpy,manta,wham,melt]
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- standardize
