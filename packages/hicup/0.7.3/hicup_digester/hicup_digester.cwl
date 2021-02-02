class: CommandLineTool
id: hicup_digester.cwl
inputs:
- id: in_arima
  doc: "Set the --re1 option to that used by the Arima protocol:\n^GATC,DpnII:G^ANTC,Arima"
  type: boolean
  inputBinding:
    prefix: --arima
- id: in_re_one
  doc: "Restriction enzyme used to digest the genome (the enzyme\nthat forms the ligation\
    \ junction) e.g. A^GATCT,BglII.\nSome Hi-C protocols may use several enzymes.\n\
    To specify several enzymes, use the \":\" to separate them\ne.g. A^GATCT,BglII:A^AGCTT,HindIII:^GATC,DpnII.\n\
    HiCUP accomodates N in restriction enzyme: e.g. :A^ANCTT"
  type: boolean
  inputBinding:
    prefix: --re1
- id: in_re_two
  doc: "To specify a restriction enzyme instead of sonication to shorten\ndi-tags.\
    \ This restriction site does NOT form a Hi-C ligation\njunction. 2 e.g. AG^CT,AluI.\
    \ Typically the sonication\nprotocol is followed."
  type: boolean
  inputBinding:
    prefix: --re2
- id: in_config
  doc: Specify the name of the optional configuration file
  type: boolean
  inputBinding:
    prefix: --config
- id: in_genome
  doc: "Name of the genome to be digested (not the path to the genome file\nor files,\
    \ but the genome name to include in the output file)"
  type: File
  inputBinding:
    prefix: --genome
- id: in_outdir
  doc: "Specify the directory to which the output files should be\nwritten"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress all progress reports
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_zip
  doc: Print the results to a gzip file
  type: boolean
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_genome
  doc: "Name of the genome to be digested (not the path to the genome file\nor files,\
    \ but the genome name to include in the output file)"
  type: File
  outputBinding:
    glob: $(inputs.in_genome)
- id: out_outdir
  doc: "Specify the directory to which the output files should be\nwritten"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hicup_digester
