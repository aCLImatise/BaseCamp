class: CommandLineTool
id: ../../../svtk_standardize.cwl
inputs:
- id: prefix
  doc: If provided, variant names will be overwritten with this prefix.
  type: string
  inputBinding:
    prefix: --prefix
- id: include_reference_sites
  doc: Include records where all samples are called 0/0 or ./.
  type: boolean
  inputBinding:
    prefix: --include-reference-sites
- id: standardize_r
  doc: Path to python file with custom standardizer definition. (Not yet supported.)
  type: string
  inputBinding:
    prefix: --standardizer
- id: contigs
  doc: Reference fasta index (.fai). If provided, contigs in index will be used in
    VCF header. Otherwise all GRCh37 contigs will be used in header. Variants on contigs
    not in provided list will be removed.
  type: string
  inputBinding:
    prefix: --contigs
- id: min_size
  doc: Minimum SV size to report [50].
  type: long
  inputBinding:
    prefix: --min-size
- id: call_null_sites
  doc: Call sites with null genotypes (./.). Generally useful when an algorithm has
    been run on a single sample and has only reported variant sites.
  type: boolean
  inputBinding:
    prefix: --call-null-sites
- id: vcf
  doc: Raw VCF.
  type: string
  inputBinding:
    position: 0
- id: f_out
  doc: Standardized VCF.
  type: string
  inputBinding:
    position: 1
- id: source
  doc: Source algorithm. [delly,lumpy,manta,wham,melt]
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- standardize
