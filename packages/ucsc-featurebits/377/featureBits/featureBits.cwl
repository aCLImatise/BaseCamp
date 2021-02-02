class: CommandLineTool
id: featureBits.cwl
inputs:
- id: in_bed
  doc: Put intersection into bed format. Can use stdout.
  type: string
  inputBinding:
    prefix: -bed
- id: in_fa
  doc: Put sequence in intersection into .fa file
  type: File
  inputBinding:
    prefix: -fa
- id: in_fa_merge
  doc: For fa output merge overlapping features.
  type: boolean
  inputBinding:
    prefix: -faMerge
- id: in_minsize
  doc: Minimum size to output (default 1)
  type: long
  inputBinding:
    prefix: -minSize
- id: in_chrom
  doc: Restrict to one chromosome
  type: string
  inputBinding:
    prefix: -chrom
- id: in_chrom_size
  doc: "Read chrom sizes from file instead of database.\n(chromInfo three column format)"
  type: long
  inputBinding:
    prefix: -chromSize
- id: in_or
  doc: Or tables together instead of anding them
  type: boolean
  inputBinding:
    prefix: -or
- id: in_not
  doc: Output negation of resulting bit set.
  type: boolean
  inputBinding:
    prefix: -not
- id: in_count_gaps
  doc: Count gaps in denominator
  type: boolean
  inputBinding:
    prefix: -countGaps
- id: in_no_random
  doc: Don't include _random (or Un) chromosomes
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: in_no_hap
  doc: Don't include _hap|_alt chromosomes
  type: boolean
  inputBinding:
    prefix: -noHap
- id: in_dots
  doc: Output dot every N chroms (scaffolds) processed
  type: string
  inputBinding:
    prefix: -dots
- id: in_min_feature_size
  doc: "Don't include bits of the track that are smaller than\nminFeatureSize, useful\
    \ for differentiating between\nalignment gaps and introns."
  type: string
  inputBinding:
    prefix: -minFeatureSize
- id: in_bin
  doc: Put bin counts in output file
  type: File
  inputBinding:
    prefix: -bin
- id: in_binsize
  doc: Bin size for generating counts in bin file (default 500000)
  type: long
  inputBinding:
    prefix: -binSize
- id: in_bin_overlap
  doc: Bin overlap for generating counts in bin file (default 250000)
  type: File
  inputBinding:
    prefix: -binOverlap
- id: in_bed_region_in
  doc: "Read in a bed file for bin counts in specific regions\nand write to bedRegionsOut"
  type: File
  inputBinding:
    prefix: -bedRegionIn
- id: in_bed_region_out
  doc: "Write a bed file of bin counts in specific regions\nfrom bedRegionIn"
  type: File
  inputBinding:
    prefix: -bedRegionOut
- id: in_enrichment
  doc: "Calculates coverage and enrichment assuming first table\nis reference gene\
    \ track and second track something else\nEnrichment is the amount of table1 that\
    \ covers table2 vs. the\namount of table1 that covers the genome. It's how much\
    \ denser\ntable1 is in table2 than it is genome-wide."
  type: boolean
  inputBinding:
    prefix: -enrichment
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bin
  doc: Put bin counts in output file
  type: File
  outputBinding:
    glob: $(inputs.in_bin)
cwlVersion: v1.1
baseCommand:
- featureBits
