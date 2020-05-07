class: CommandLineTool
id: ribotish_quality.cwl
inputs:
- id: b
  doc: Riboseq bam file
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: Gene annotation file
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: "Output data file (default: ribobampath[:-4]+ '_qual.txt')"
  type: string
  inputBinding:
    prefix: -o
- id: tis
  doc: The data is TIS enriched (for LTM & Harritonine)
  type: boolean
  inputBinding:
    prefix: --tis
- id: i
  doc: Input previous output file, do not read gene file and bam file again
  type: string
  inputBinding:
    prefix: -i
- id: gene_format
  doc: 'Gene annotation file format (gtf, bed, gpd, gff, default: auto)'
  type: string
  inputBinding:
    prefix: --geneformat
- id: chr_map
  doc: Input chromosome id mapping table file if annotation chr ids are not same as
    chr ids in bam/fasta files
  type: string
  inputBinding:
    prefix: --chrmap
- id: f
  doc: "Output pdf figure file (default: ribobampath[:-4]+ '_qual.pdf')"
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: "Output offset parameter file (default: ribobampath[:-4]+ '.para.py')"
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: 'Range of tag length (default: 25,35)'
  type: string
  inputBinding:
    prefix: -l
- id: d
  doc: 'Position range near start codon or stop codon (default: -40,20)'
  type: string
  inputBinding:
    prefix: -d
- id: bins
  doc: 'Bins for cds profile (default: 20)'
  type: string
  inputBinding:
    prefix: --bins
- id: nom0
  doc: Do not consider reads with mismatch at position 0 as a new group
  type: boolean
  inputBinding:
    prefix: --nom0
- id: th
  doc: 'Threshold for quality (default: 0.5)'
  type: string
  inputBinding:
    prefix: --th
- id: max_nh
  doc: 'Max NH value allowed for bam alignments (default: 1)'
  type: long
  inputBinding:
    prefix: --maxNH
- id: min_mapq
  doc: 'Min MapQ value required for bam alignments (default: 1)'
  type: long
  inputBinding:
    prefix: --minMapQ
- id: secondary
  doc: Use bam secondary alignments
  type: boolean
  inputBinding:
    prefix: --secondary
- id: paired
  doc: Reads are paired end
  type: boolean
  inputBinding:
    prefix: --paired
- id: colorblind
  doc: Use a color style readable for color blind people ('#F00078,#00F000,#0078F0')
  type: boolean
  inputBinding:
    prefix: --colorblind
- id: colors
  doc: "User specified Matplotlib accepted color codes for three frames (default:\
    \ 'r,g,b')"
  type: string
  inputBinding:
    prefix: --colors
- id: p
  doc: 'Number of processes (default: 1)'
  type: string
  inputBinding:
    prefix: -p
- id: verbose
  doc: Increase output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotish
- quality
