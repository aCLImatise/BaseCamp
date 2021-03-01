class: CommandLineTool
id: BETA_minus.cwl
inputs:
- id: in_peak_file
  doc: "The bed format of peaks binding sites. (BETA support 3\nor 5 columns bed format,\
    \ CHROM, START, END (NAME,\nSCORE))"
  type: File?
  inputBinding:
    prefix: --peakfile
- id: in_genome
  doc: "Specify your species, hg38,hg19,hg18,mm10,mm9. For\nother genome assembily\
    \ versions of human and mouse or\nother species, ignore this paramter"
  type: string?
  inputBinding:
    prefix: --genome
- id: in_reference
  doc: "the refgene info file downloaded from UCSC genome\nbrowser.input this file\
    \ only if your genome is neither\nhg19 nor mm9"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_name
  doc: "this argument is used as the prefix of the result\nfile. If not set, 'NA'\
    \ will be used instead"
  type: File?
  inputBinding:
    prefix: --name
- id: in_output
  doc: "the directory to store all the output files, if you\ndon't set this, files\
    \ will be output into the current\ndirectory"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_distance
  doc: "Set a number which unit is 'base'. It will get peaks\nwithin this distance\
    \ from gene TSS. default:100000\n(100kb)"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_bl
  doc: "whether or not use CTCF boundary to filter peaks\naround a gene, DEFAULT=FALSE"
  type: boolean?
  inputBinding:
    prefix: --bl
- id: in_bf
  doc: "CTCF conserved peaks bed file, use this only when you\nset --bl and the genome\
    \ is neither hg19 nor mm9"
  type: File?
  inputBinding:
    prefix: --bf
- id: in_pn
  doc: "the number of peaks you want to consider,\nDEFAULT=10000\n"
  type: long?
  inputBinding:
    prefix: --pn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "the directory to store all the output files, if you\ndon't set this, files\
    \ will be output into the current\ndirectory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- BETA
- minus
