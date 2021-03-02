class: CommandLineTool
id: qualimap_rnaseq.cwl
inputs:
- id: in_algorithm
  doc: "Counting algorithm:\nuniquely-mapped-reads(default) or\nproportional."
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_bam
  doc: Input mapping file in BAM format.
  type: File?
  inputBinding:
    prefix: -bam
- id: in_gtf
  doc: Annotations file in Ensembl GTF format.
  type: File?
  inputBinding:
    prefix: -gtf
- id: in_oc
  doc: "Output file for computed counts. If only name\nof the file is provided, then\
    \ the file will be\nsaved in the output folder."
  type: File?
  inputBinding:
    prefix: -oc
- id: in_outdir
  doc: Output folder for HTML report and raw data.
  type: Directory?
  inputBinding:
    prefix: -outdir
- id: in_outfile
  doc: "Output file for PDF report (default value is\nreport.pdf)."
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_out_format
  doc: "Format of the output report (PDF, HTML or both\nPDF:HTML, default is HTML)."
  type: string?
  inputBinding:
    prefix: -outformat
- id: in_sequencing_protocol
  doc: "Sequencing library protocol:\nstrand-specific-forward,\nstrand-specific-reverse\
    \ or non-strand-specific\n(default)"
  type: string?
  inputBinding:
    prefix: --sequencing-protocol
- id: in_paired
  doc: "Setting this flag for paired-end experiments\nwill result in counting fragments\
    \ instead of\nreads"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_sorted
  doc: "This flag indicates that the input file is\nalready sorted by name. If not\
    \ set, additional\nsorting by name will be performed. Only\nrequired for paired-end\
    \ analysis.\n"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_arg
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oc
  doc: "Output file for computed counts. If only name\nof the file is provided, then\
    \ the file will be\nsaved in the output folder."
  type: File?
  outputBinding:
    glob: $(inputs.in_oc)
- id: out_outdir
  doc: Output folder for HTML report and raw data.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_outfile
  doc: "Output file for PDF report (default value is\nreport.pdf)."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- qualimap
- rnaseq
