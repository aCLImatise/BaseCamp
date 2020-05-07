class: CommandLineTool
id: qualimap_bamqc.cwl
inputs:
- id: bam
  doc: Input mapping file in BAM format
  type: string
  inputBinding:
    prefix: -bam
- id: paint_chromosome_limits
  doc: Paint chromosome limits inside charts
  type: boolean
  inputBinding:
    prefix: --paint-chromosome-limits
- id: genome_gc_distr
  doc: 'Species to compare with genome GC distribution. Possible values: HUMAN - hg19;
    MOUSE - mm9(default), mm10'
  type: string
  inputBinding:
    prefix: --genome-gc-distr
- id: feature_file
  doc: Feature file with regions of interest in GFF/GTF or BED format
  type: string
  inputBinding:
    prefix: --feature-file
- id: hm
  doc: Minimum size for a homopolymer to be considered in indel analysis (default
    is 3)
  type: string
  inputBinding:
    prefix: -hm
- id: collect_overlap_pairs
  doc: Activate this option to collect statistics of overlapping paired-end reads
  type: boolean
  inputBinding:
    prefix: --collect-overlap-pairs
- id: nr
  doc: Number of reads analyzed in a chunk (default is 1000)
  type: string
  inputBinding:
    prefix: -nr
- id: nt
  doc: Number of threads (default is 8)
  type: string
  inputBinding:
    prefix: -nt
- id: nw
  doc: Number of windows (default is 400)
  type: string
  inputBinding:
    prefix: -nw
- id: output_genome_coverage
  doc: 'File to save per base non-zero coverage. Warning: large files are expected
    for large genomes'
  type: string
  inputBinding:
    prefix: --output-genome-coverage
- id: outside_stats
  doc: Report information for the regions outside those defined by feature-file  (ignored
    when -gff option is not set)
  type: boolean
  inputBinding:
    prefix: --outside-stats
- id: outdir
  doc: Output folder for HTML report and raw data.
  type: string
  inputBinding:
    prefix: -outdir
- id: outfile
  doc: Output file for PDF report (default value is report.pdf).
  type: string
  inputBinding:
    prefix: -outfile
- id: out_format
  doc: Format of the output report (PDF, HTML or both PDF:HTML, default is HTML).
  type: string
  inputBinding:
    prefix: -outformat
- id: sequencing_protocol
  doc: 'Sequencing library protocol: strand-specific-forward, strand-specific-reverse
    or non-strand-specific (default)'
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: skip_duplicated
  doc: Activate this option to skip duplicated alignments from the analysis. If the
    duplicates are not flagged in the BAM file, then they will be detected by Qualimap
    and can be selected for skipping.
  type: boolean
  inputBinding:
    prefix: --skip-duplicated
- id: skip_dup_mode
  doc: 'Specific type of duplicated alignments to skip (if this option is activated).
    0 : only flagged duplicates (default) 1 : only estimated by Qualimap 2 : both
    flagged and estimated'
  type: string
  inputBinding:
    prefix: --skip-dup-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- bamqc
