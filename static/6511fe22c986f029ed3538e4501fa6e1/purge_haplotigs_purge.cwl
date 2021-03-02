class: CommandLineTool
id: purge_haplotigs_purge.cwl
inputs:
- id: in_genome
  doc: Genome assembly in fasta format. Needs to be indexed with samtools faidx.
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_coverage
  doc: Contig by contig coverage stats csv file from the previous step.
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_threads
  doc: Number of worker threads to use. DEFAULT = 4
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_out_prefix
  doc: Prefix for the curated assembly. DEFAULT = "curated"
  type: boolean?
  inputBinding:
    prefix: -outprefix
- id: in_repeats
  doc: BED-format file of repeats to ignore during analysis.
  type: boolean?
  inputBinding:
    prefix: -repeats
- id: in_dot_plots
  doc: Generate dotplots for manual inspection.
  type: boolean?
  inputBinding:
    prefix: -dotplots
- id: in_bam
  doc: "Samtools-indexed bam file of aligned and sorted reads/subreads to the\nreference,\
    \ required for generating dotplots."
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_falcon_naming
  doc: Rename contigs in the style used by FALCON/FALCON-unzip
  type: boolean?
  inputBinding:
    prefix: -falconNaming
- id: in_align_cov
  doc: Percent cutoff for identifying a contig as a haplotig. DEFAULT = 70
  type: boolean?
  inputBinding:
    prefix: -align_cov
- id: in_max_match
  doc: "Percent cutoff for identifying repetitive contigs. Ignored when\nusing repeat\
    \ annotations (-repeats). DEFAULT = 250"
  type: boolean?
  inputBinding:
    prefix: -max_match
- id: in_minimap_indexing_drop
  doc: Minimap2 indexing, drop minimisers every N bases, DEFAULT = 4G
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_verbose
  doc: Print EVERYTHING.
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_limit_io
  doc: Limit for I/O intensive jobs. DEFAULT = -threads
  type: boolean?
  inputBinding:
    prefix: -limit_io
- id: in_wind_min
  doc: Min window size for BED coverage plots (for dotplots). DEFAULT = 5000
  type: boolean?
  inputBinding:
    prefix: -wind_min
- id: in_wind_nmax
  doc: Max windows per contig for BED coverage plots (for dotplots). DEFAULT = 200
  type: boolean?
  inputBinding:
    prefix: -wind_nmax
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- purge
