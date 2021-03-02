class: CommandLineTool
id: bseqc2.cwl
inputs:
- id: in_arg_input_bam
  doc: '[ --infile ] arg               Input BAM file.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_statistics
  doc: '[ --outfile ] arg              Output statistics.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg            Reference FASTA file. This option is'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_number_first
  doc: "[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be\n\
    examined. Be aware of extremely low CpG\nmethylation levels when chrM is the first\n\
    chromosome. Default: 20000000."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_rscript_defaultbindirbseqcmbiasplotr
  doc: "[ --rscript ] arg              Rscript for mbias plot. Default:\n`$bindir/bseqc2mbiasplot.R`."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_required_dot
  doc: '-l [ --length ] arg (=150)        Read length. Length of the query sequence '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bseqc2
