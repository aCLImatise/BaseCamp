class: CommandLineTool
id: qualimap_clustering.cwl
inputs:
- id: in_bin_size
  doc: Size of the bin (default is 100)
  type: long
  inputBinding:
    prefix: --bin-size
- id: in_clusters
  doc: Comma-separated list of cluster sizes
  type: string
  inputBinding:
    prefix: --clusters
- id: in_control
  doc: Comma-separated list of control BAM files
  type: string
  inputBinding:
    prefix: -control
- id: in_expr
  doc: Name of the experiment
  type: string
  inputBinding:
    prefix: -expr
- id: in_fragment_length
  doc: Smoothing length of a fragment
  type: long
  inputBinding:
    prefix: --fragment-length
- id: in_upstream_offset_default
  doc: Upstream offset (default is 2000)
  type: long
  inputBinding:
    prefix: -l
- id: in_name
  doc: Comma-separated names of the replicates
  type: string
  inputBinding:
    prefix: -name
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
- id: in_r_script_path
  doc: "Path to Rscript executable (by default it is\nassumed to be available from\
    \ system $PATH)"
  type: File
  inputBinding:
    prefix: --rscriptpath
- id: in_downstream_offset_default
  doc: Downstream offset (default is 500)
  type: long
  inputBinding:
    prefix: -r
- id: in_regions
  doc: Path to regions file
  type: File
  inputBinding:
    prefix: -regions
- id: in_sample
  doc: Comma-separated list of sample BAM files
  type: string
  inputBinding:
    prefix: -sample
- id: in_viz
  doc: 'Visualization type: heatmap or line'
  type: string
  inputBinding:
    prefix: -viz
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
- clustering
