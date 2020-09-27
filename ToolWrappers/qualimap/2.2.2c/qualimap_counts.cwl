class: CommandLineTool
id: qualimap_counts.cwl
inputs:
- id: in_compare
  doc: "Perform comparison of conditions. Currently 2 maximum\nis possible."
  type: boolean
  inputBinding:
    prefix: --compare
- id: in_data
  doc: "File describing the input data. Format of the file is\na 4-column tab-delimited\
    \ table.\nColumn 1: sample name\nColumn 2: condition of the sample\nColumn 3:\
    \ path to the counts data for the sample\nColumn 4: index of the column with counts"
  type: File
  inputBinding:
    prefix: --data
- id: in_info
  doc: "Path to info file containing genes GC-content, length\nand type."
  type: long
  inputBinding:
    prefix: --info
- id: in_threshold
  doc: Threshold for the number of counts
  type: long
  inputBinding:
    prefix: --threshold
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
  doc: "Path to Rscript executable (by default it is assumed\nto be available from\
    \ system $PATH)"
  type: File
  inputBinding:
    prefix: --rscriptpath
- id: in_species
  doc: "Use built-in info file for the given species: HUMAN or\nMOUSE.\n"
  type: File
  inputBinding:
    prefix: --species
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
- counts
