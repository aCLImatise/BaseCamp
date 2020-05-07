class: CommandLineTool
id: alleleCounter.cwl
inputs:
- id: loci_file
  doc: '[file]           Path to loci file.'
  type: boolean
  inputBinding:
    prefix: --loci-file
- id: hts_file
  doc: '[file]            Path to sample HTS file.'
  type: boolean
  inputBinding:
    prefix: --hts-file
- id: output_file
  doc: '[file]         Path write output file.'
  type: boolean
  inputBinding:
    prefix: --output-file
- id: ref_file
  doc: "[file]           Path to reference fasta index file. NB. If cram format is\
    \ supplied via -b and the reference listed in the cram header can't be found alleleCounter\
    \ may fail to work correctly."
  type: boolean
  inputBinding:
    prefix: --ref-file
- id: min_base_qual
  doc: '[int]       Minimum base quality [Default: 20].'
  type: boolean
  inputBinding:
    prefix: --min-base-qual
- id: min_map_qual
  doc: '[int]        Minimum mapping quality [Default: 35].'
  type: boolean
  inputBinding:
    prefix: --min-map-qual
- id: contig
  doc: '[string]           Limit calling to named contig.'
  type: boolean
  inputBinding:
    prefix: --contig
- id: dense_snps
  doc: 'Improves performance where many positions are close together '
  type: boolean
  inputBinding:
    prefix: --dense-snps
- id: is_10x
  doc: Enables 10X processing mode. In this mode the HTS input file must be a cellranger
    produced BAM file.  Allele counts are then given on a per-cellular barcode basis,
    with each count representing the consensus base for that UMI.  by iterating through
    bam file rather than using a 'fetch' approach.
  type: boolean
  inputBinding:
    prefix: --is-10x
- id: required_flag
  doc: '[int]       Flag value of reads to retain in allele counting default: [3].
    N.B. if the proper-pair flag is are selected, alleleCounter will assume paired-end
    and filter out any proper-pair flagged reads not in F/R orientation. -F  --filtered-flag
    [int]       Flag value of reads to exclude in allele counting default: [3852].'
  type: boolean
  inputBinding:
    prefix: --required-flag
outputs: []
cwlVersion: v1.1
baseCommand:
- alleleCounter
