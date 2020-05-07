class: CommandLineTool
id: qualimap_rnaseq.cwl
inputs:
- id: algorithm
  doc: 'Counting algorithm: uniquely-mapped-reads(default) or proportional.'
  type: string
  inputBinding:
    prefix: --algorithm
- id: bam
  doc: Input mapping file in BAM format.
  type: string
  inputBinding:
    prefix: -bam
- id: gtf
  doc: Annotations file in Ensembl GTF format.
  type: string
  inputBinding:
    prefix: -gtf
- id: oc
  doc: Output file for computed counts. If only name of the file is provided, then
    the file will be saved in the output folder.
  type: string
  inputBinding:
    prefix: -oc
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
- id: paired
  doc: Setting this flag for paired-end experiments will result in counting fragments
    instead of reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: sorted
  doc: This flag indicates that the input file is already sorted by name. If not set,
    additional sorting by name will be performed. Only required for paired-end analysis.
  type: boolean
  inputBinding:
    prefix: --sorted
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- rnaseq
