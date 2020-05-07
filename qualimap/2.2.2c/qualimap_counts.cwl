class: CommandLineTool
id: qualimap_counts.cwl
inputs:
- id: compare
  doc: Perform comparison of conditions. Currently 2 maximum is possible.
  type: boolean
  inputBinding:
    prefix: --compare
- id: data
  doc: 'File describing the input data. Format of the file is a 4-column tab-delimited
    table. Column 1: sample name Column 2: condition of the sample Column 3: path
    to the counts data for the sample Column 4: index of the column with counts'
  type: string
  inputBinding:
    prefix: --data
- id: info
  doc: Path to info file containing genes GC-content, length and type.
  type: string
  inputBinding:
    prefix: --info
- id: threshold
  doc: Threshold for the number of counts
  type: string
  inputBinding:
    prefix: --threshold
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
- id: species
  doc: 'Use built-in info file for the given species: HUMAN or MOUSE.'
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- counts
