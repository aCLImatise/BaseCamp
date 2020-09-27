class: CommandLineTool
id: qualimap_multi_bamqc.cwl
inputs:
- id: in_paint_chromosome_limits
  doc: "Only for -r mode. Paint chromosome limits\ninside charts"
  type: boolean
  inputBinding:
    prefix: --paint-chromosome-limits
- id: in_data
  doc: "File describing the input data. Format of the\nfile is a 2- or 3-column tab-delimited\
    \ table.\nColumn 1: sample name\nColumn 2: either path to the BAM QC result or\n\
    path to BAM file (-r mode)\nColumn 3: group name (activates sample group\nmarking)"
  type: File
  inputBinding:
    prefix: --data
- id: in_feature_file
  doc: "Only for -r mode. Feature file with regions of\ninterest in GFF/GTF or BED\
    \ format"
  type: File
  inputBinding:
    prefix: --feature-file
- id: in_hm
  doc: "Only for -r mode. Minimum size for a\nhomopolymer to be considered in indel\
    \ analysis\n(default is 3)"
  type: long
  inputBinding:
    prefix: -hm
- id: in_nr
  doc: "Only for -r mode. Number of reads analyzed in\na chunk (default is 1000)"
  type: long
  inputBinding:
    prefix: -nr
- id: in_nw
  doc: "Only for -r mode. Number of windows (default\nis 400)"
  type: long
  inputBinding:
    prefix: -nw
- id: in_outdir
  doc: Output folder for HTML report and raw data.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_outfile
  doc: "Output file for PDF report (default value is\nreport.pdf)."
  type: File
  inputBinding:
    prefix: -outfile
- id: in_out_format
  doc: "Format of the output report (PDF, HTML or both\nPDF:HTML, default is HTML)."
  type: string
  inputBinding:
    prefix: -outformat
- id: in_sequencing_protocol
  doc: "Only for -r mode. Sequencing library protocol:\nstrand-specific-forward,\n\
    strand-specific-reverse or non-strand-specific\n(default)"
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: in_run_bam_qc
  doc: "Raw BAM files are provided as input. If this\noption is activated BAM QC process\
    \ first will\nbe run for each sample, then multi-sample\nanalysis will be performed.\n"
  type: boolean
  inputBinding:
    prefix: --run-bamqc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output folder for HTML report and raw data.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_outfile
  doc: "Output file for PDF report (default value is\nreport.pdf)."
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- qualimap
- multi-bamqc
