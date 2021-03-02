class: CommandLineTool
id: alleleCounter.cwl
inputs:
- id: in_loci_file
  doc: '[file]           Path to loci file.'
  type: boolean?
  inputBinding:
    prefix: --loci-file
- id: in_hts_file
  doc: '[file]            Path to sample HTS file.'
  type: boolean?
  inputBinding:
    prefix: --hts-file
- id: in_output_file
  doc: '[file]         Path write output file.'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_ref_file
  doc: "[file]           Path to reference fasta index file.\nNB. If cram format is\
    \ supplied via -b and the reference listed in the cram header\ncan't be found\
    \ alleleCounter may fail to work correctly."
  type: boolean?
  inputBinding:
    prefix: --ref-file
- id: in_min_base_qual
  doc: '[int]       Minimum base quality [Default: 20].'
  type: boolean?
  inputBinding:
    prefix: --min-base-qual
- id: in_min_map_qual
  doc: '[int]        Minimum mapping quality [Default: 35].'
  type: boolean?
  inputBinding:
    prefix: --min-map-qual
- id: in_contig
  doc: '[string]           Limit calling to named contig.'
  type: boolean?
  inputBinding:
    prefix: --contig
- id: in_dense_snps
  doc: Improves performance where many positions are close together
  type: boolean?
  inputBinding:
    prefix: --dense-snps
- id: in_is_one_zero_x
  doc: "Enables 10X processing mode.\nIn this mode the HTS input file must be a cellranger\
    \ produced BAM file.  Allele\ncounts are then given on a per-cellular barcode\
    \ basis, with each count representing\nthe consensus base for that UMI.\nby iterating\
    \ through bam file rather than using a 'fetch' approach."
  type: boolean?
  inputBinding:
    prefix: --is-10x
- id: in_required_flag
  doc: "[int]       Flag value of reads to retain in allele counting default: [3].\n\
    N.B. if the proper-pair flag is are selected, alleleCounter will assume paired-end\n\
    and filter out any proper-pair flagged reads not in F/R orientation. -F  --filtered-flag\
    \ [int]       Flag value of reads to exclude in allele counting default: [3852]."
  type: boolean?
  inputBinding:
    prefix: --required-flag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: '[file]         Path write output file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cancerit-allelecount:4.2.1--h3ecb661_0
cwlVersion: v1.1
baseCommand:
- alleleCounter
