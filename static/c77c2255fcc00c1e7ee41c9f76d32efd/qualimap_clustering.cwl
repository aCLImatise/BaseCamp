class: CommandLineTool
id: qualimap_clustering.cwl
inputs:
- id: bin_size
  doc: Size of the bin (default is 100)
  type: string
  inputBinding:
    prefix: --bin-size
- id: clusters
  doc: Comma-separated list of cluster sizes
  type: string
  inputBinding:
    prefix: --clusters
- id: control
  doc: Comma-separated list of control BAM files
  type: string
  inputBinding:
    prefix: -control
- id: expr
  doc: Name of the experiment
  type: string
  inputBinding:
    prefix: -expr
- id: fragment_length
  doc: Smoothing length of a fragment
  type: string
  inputBinding:
    prefix: --fragment-length
- id: l
  doc: Upstream offset (default is 2000)
  type: string
  inputBinding:
    prefix: -l
- id: name
  doc: Comma-separated names of the replicates
  type: string
  inputBinding:
    prefix: -name
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
- id: r_script_path
  doc: Path to Rscript executable (by default it is assumed to be available from system
    $PATH)
  type: string
  inputBinding:
    prefix: --rscriptpath
- id: r
  doc: Downstream offset (default is 500)
  type: string
  inputBinding:
    prefix: -r
- id: regions
  doc: Path to regions file
  type: string
  inputBinding:
    prefix: -regions
- id: sample
  doc: Comma-separated list of sample BAM files
  type: string
  inputBinding:
    prefix: -sample
- id: viz
  doc: 'Visualization type: heatmap or line'
  type: string
  inputBinding:
    prefix: -viz
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- clustering
