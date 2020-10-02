class: CommandLineTool
id: srnapipe.cwl
inputs:
- id: in_fast_q
  doc: Fastq file to process
  type: File
  inputBinding:
    prefix: --fastq
- id: in_fast_q_n
  doc: Name of the content to process
  type: string
  inputBinding:
    prefix: --fastq_n
- id: in_ref
  doc: Fasta file containing the reference genome
  type: File
  inputBinding:
    prefix: --ref
- id: in_transcripts
  doc: Fasta file containing the transcripts
  type: File
  inputBinding:
    prefix: --transcripts
- id: in_te
  doc: Fasta file containing the transposable elements
  type: File
  inputBinding:
    prefix: --TE
- id: in_mirnas
  doc: Fasta file containing the miRNAs
  type: File
  inputBinding:
    prefix: --miRNAs
- id: in_snrnas
  doc: Fasta file containing the snRNAs
  type: File
  inputBinding:
    prefix: --snRNAs
- id: in_rrnas
  doc: Fasta file containing the rRNAs
  type: File
  inputBinding:
    prefix: --rRNAs
- id: in_trnas
  doc: Fasta file containing the tRNAs
  type: File
  inputBinding:
    prefix: --tRNAs
- id: in_html
  doc: Main HTML file where results will be displayed
  type: boolean
  inputBinding:
    prefix: --html
- id: in_dir
  doc: Folder where results will be stored
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_min
  doc: 'Minimum read size (default: 18)'
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: 'Maximum read size (default: 29)'
  type: long
  inputBinding:
    prefix: --max
- id: in_si_min
  doc: 'Lower bound of siRNA range (default: 21)'
  type: long
  inputBinding:
    prefix: --si_min
- id: in_si_max
  doc: 'Higher bound of siRNA range (default: 21)'
  type: long
  inputBinding:
    prefix: --si_max
- id: in_pi_min
  doc: 'Lower bound of piRNA range (default: 23)'
  type: long
  inputBinding:
    prefix: --pi_min
- id: in_pi_max
  doc: 'Higher bound of piRNA range (default: 29)'
  type: long
  inputBinding:
    prefix: --pi_max
- id: in_mis
  doc: 'Maximal genome mismatches (default: 0)'
  type: long
  inputBinding:
    prefix: --mis
- id: in_mist_e
  doc: 'Maximal TE mismatches (default: 3)'
  type: long
  inputBinding:
    prefix: --misTE
- id: in_ppp_on
  doc: 'Ping-pong partners (default: true)'
  type: string
  inputBinding:
    prefix: --PPPon
- id: in_threads
  doc: 'Number of threads used (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- srnapipe
