class: CommandLineTool
id: qualimap_multi_bamqc.cwl
inputs:
- id: paint_chromosome_limits
  doc: Only for -r mode. Paint chromosome limits inside charts
  type: boolean
  inputBinding:
    prefix: --paint-chromosome-limits
- id: data
  doc: 'File describing the input data. Format of the file is a 2- or 3-column tab-delimited
    table. Column 1: sample name Column 2: either path to the BAM QC result or path
    to BAM file (-r mode) Column 3: group name (activates sample group marking)'
  type: string
  inputBinding:
    prefix: --data
- id: feature_file
  doc: Only for -r mode. Feature file with regions of interest in GFF/GTF or BED format
  type: string
  inputBinding:
    prefix: --feature-file
- id: hm
  doc: Only for -r mode. Minimum size for a homopolymer to be considered in indel
    analysis (default is 3)
  type: string
  inputBinding:
    prefix: -hm
- id: nr
  doc: Only for -r mode. Number of reads analyzed in a chunk (default is 1000)
  type: string
  inputBinding:
    prefix: -nr
- id: nw
  doc: Only for -r mode. Number of windows (default is 400)
  type: string
  inputBinding:
    prefix: -nw
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
  doc: 'Only for -r mode. Sequencing library protocol: strand-specific-forward, strand-specific-reverse
    or non-strand-specific (default)'
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: run_bam_qc
  doc: Raw BAM files are provided as input. If this option is activated BAM QC process
    first will be run for each sample, then multi-sample analysis will be performed.
  type: boolean
  inputBinding:
    prefix: --run-bamqc
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- multi-bamqc
