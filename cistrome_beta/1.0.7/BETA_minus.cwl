class: CommandLineTool
id: BETA_minus.cwl
inputs:
- id: peak_file
  doc: The bed format of peaks binding sites. (BETA support 3 or 5 columns bed format,
    CHROM, START, END (NAME, SCORE))
  type: string
  inputBinding:
    prefix: --peakfile
- id: genome
  doc: Specify your species, hg38,hg19,hg18,mm10,mm9. For other genome assembily versions
    of human and mouse or other species, ignore this paramter
  type: string
  inputBinding:
    prefix: --genome
- id: reference
  doc: the refgene info file downloaded from UCSC genome browser.input this file only
    if your genome is neither hg19 nor mm9
  type: string
  inputBinding:
    prefix: --reference
- id: name
  doc: this argument is used as the prefix of the result file. If not set, 'NA' will
    be used instead
  type: string
  inputBinding:
    prefix: --name
- id: output
  doc: the directory to store all the output files, if you don't set this, files will
    be output into the current directory
  type: string
  inputBinding:
    prefix: --output
- id: distance
  doc: Set a number which unit is 'base'. It will get peaks within this distance from
    gene TSS. default:100000 (100kb)
  type: string
  inputBinding:
    prefix: --distance
- id: bl
  doc: whether or not use CTCF boundary to filter peaks around a gene, DEFAULT=FALSE
  type: boolean
  inputBinding:
    prefix: --bl
- id: bf
  doc: CTCF conserved peaks bed file, use this only when you set --bl and the genome
    is neither hg19 nor mm9
  type: string
  inputBinding:
    prefix: --bf
- id: pn
  doc: the number of peaks you want to consider, DEFAULT=10000
  type: string
  inputBinding:
    prefix: --pn
outputs: []
cwlVersion: v1.1
baseCommand:
- BETA
- minus
