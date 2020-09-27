class: CommandLineTool
id: purge_haplotigs_purge.cwl
inputs:
- id: in_genome_genome_assembly
  doc: / -genome        Genome assembly in fasta format. Needs to be indexed with
    samtools faidx.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_coverage_contig_file
  doc: / -coverage      Contig by contig coverage stats csv file from the previous
    step.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_threads_number_use
  doc: / -threads       Number of worker threads to use. DEFAULT = 4
  type: boolean
  inputBinding:
    prefix: -t
- id: in_outprefix_prefix_curated
  doc: / -outprefix     Prefix for the curated assembly. DEFAULT = "curated"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_repeats_bedformat_file
  doc: / -repeats       BED-format file of repeats to ignore during analysis.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_dotplots_generate_dotplots
  doc: / -dotplots      Generate dotplots for manual inspection.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_bam_samtoolsindexed_bam
  doc: "/ -bam           Samtools-indexed bam file of aligned and sorted reads/subreads\
    \ to the\nreference, required for generating dotplots."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_falconnaming_rename_contigs
  doc: / -falconNaming  Rename contigs in the style used by FALCON/FALCON-unzip
  type: boolean
  inputBinding:
    prefix: -f
- id: in_aligncov_percent_cutoff
  doc: / -align_cov     Percent cutoff for identifying a contig as a haplotig. DEFAULT
    = 70
  type: boolean
  inputBinding:
    prefix: -a
- id: in_maxmatch_percent_cutoff
  doc: "/ -max_match     Percent cutoff for identifying repetitive contigs. Ignored\
    \ when\nusing repeat annotations (-repeats). DEFAULT = 250"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_minimap_indexing_drop
  doc: Minimap2 indexing, drop minimisers every N bases, DEFAULT = 4G
  type: boolean
  inputBinding:
    prefix: -I
- id: in_verbose_print_everything
  doc: / -verbose       Print EVERYTHING.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_limit_io
  doc: Limit for I/O intensive jobs. DEFAULT = -threads
  type: boolean
  inputBinding:
    prefix: -limit_io
- id: in_wind_min
  doc: Min window size for BED coverage plots (for dotplots). DEFAULT = 5000
  type: boolean
  inputBinding:
    prefix: -wind_min
- id: in_wind_nmax
  doc: Max windows per contig for BED coverage plots (for dotplots). DEFAULT = 200
  type: boolean
  inputBinding:
    prefix: -wind_nmax
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- purge
