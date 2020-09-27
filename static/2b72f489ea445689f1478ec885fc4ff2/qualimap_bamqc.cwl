class: CommandLineTool
id: qualimap_bamqc.cwl
inputs:
- id: in_bam
  doc: Input mapping file in BAM format
  type: File
  inputBinding:
    prefix: -bam
- id: in_paint_chromosome_limits
  doc: Paint chromosome limits inside charts
  type: boolean
  inputBinding:
    prefix: --paint-chromosome-limits
- id: in_genome_gc_distr
  doc: "Species to compare with genome GC\ndistribution. Possible values: HUMAN -\n\
    hg19; MOUSE - mm9(default), mm10"
  type: long
  inputBinding:
    prefix: --genome-gc-distr
- id: in_feature_file
  doc: "Feature file with regions of interest in\nGFF/GTF or BED format"
  type: File
  inputBinding:
    prefix: --feature-file
- id: in_hm
  doc: "Minimum size for a homopolymer to be\nconsidered in indel analysis (default\
    \ is\n3)"
  type: long
  inputBinding:
    prefix: -hm
- id: in_collect_overlap_pairs
  doc: "Activate this option to collect statistics\nof overlapping paired-end reads"
  type: boolean
  inputBinding:
    prefix: --collect-overlap-pairs
- id: in_nr
  doc: "Number of reads analyzed in a chunk\n(default is 1000)"
  type: long
  inputBinding:
    prefix: -nr
- id: in_nt
  doc: Number of threads (default is 8)
  type: long
  inputBinding:
    prefix: -nt
- id: in_nw
  doc: Number of windows (default is 400)
  type: long
  inputBinding:
    prefix: -nw
- id: in_output_genome_coverage
  doc: "File to save per base non-zero coverage.\nWarning: large files are expected\
    \ for\nlarge genomes"
  type: File
  inputBinding:
    prefix: --output-genome-coverage
- id: in_outside_stats
  doc: "Report information for the regions outside\nthose defined by feature-file\
    \  (ignored\nwhen -gff option is not set)"
  type: boolean
  inputBinding:
    prefix: --outside-stats
- id: in_outdir
  doc: Output folder for HTML report and raw
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_out_format
  doc: "Format of the output report (PDF, HTML or\nboth PDF:HTML, default is HTML)."
  type: string
  inputBinding:
    prefix: -outformat
- id: in_sequencing_protocol
  doc: "Sequencing library protocol:\nstrand-specific-forward,\nstrand-specific-reverse\
    \ or\nnon-strand-specific (default)"
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: in_skip_duplicated
  doc: "Activate this option to skip duplicated\nalignments from the analysis. If\
    \ the\nduplicates are not flagged in the BAM\nfile, then they will be detected\
    \ by\nQualimap and can be selected for skipping."
  type: boolean
  inputBinding:
    prefix: --skip-duplicated
- id: in_skip_dup_mode
  doc: "Specific type of duplicated alignments to\nskip (if this option is activated).\n\
    0 : only flagged duplicates (default)\n1 : only estimated by Qualimap\n2 : both\
    \ flagged and estimated\n"
  type: long
  inputBinding:
    prefix: --skip-dup-mode
- id: in_data_dot
  doc: -outfile <arg>                       Output file for PDF report (default value
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output folder for HTML report and raw
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- qualimap
- bamqc
