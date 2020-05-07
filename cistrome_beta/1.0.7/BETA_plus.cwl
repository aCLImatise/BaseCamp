class: CommandLineTool
id: BETA_plus.cwl
inputs:
- id: peak_file
  doc: The bed format of peaks binding sites.(BETA support 3 or 5 columns bed format,
    CHROM, START, END (NAME, SCORE))
  type: string
  inputBinding:
    prefix: --peakfile
- id: diff_expr
  doc: IThe differential expression file get from limma for MicroArray ddata and cuffdiff
    for RNAseq data
  type: string
  inputBinding:
    prefix: --diff_expr
- id: kind
  doc: the kind of your expression file,this is required,it can be LIM, CUF, BSF,
    O. LIM for LIMMA standard format. CUF for CUFDIFF standard format, BSF for BETA
    specific format and O for other formats, if is 'O', columns infor required via
    --info
  type: string
  inputBinding:
    prefix: --kind
- id: genome
  doc: Specify your species, hg38,hg19,hg18,mm10,mm9. for other genome assembily versions
    of human and mouse, select hg or mm. Other species, ignore this paramter
  type: string
  inputBinding:
    prefix: --genome
- id: gname2
  doc: If this switch is on, gene or transcript IDs in files given through -g will
    be considered as official gene symbols, DEFAULT=FALSE
  type: boolean
  inputBinding:
    prefix: --gname2
- id: info
  doc: "specify the geneID, up/down status and statistcal values column of your expression\
    \ data. NOTE: use a comma as an connector. for example: 1,2,6 means geneID in\
    \ the 1st column, logFC in 2nd column and FDR in 6th column DEFAULT:1,2,6 for\
    \ LIMMA; 2,10,13 for Cuffdiff and 1,2,3 for BETA specific format. You'd better\
    \ set it based on your exact expression file"
  type: string
  inputBinding:
    prefix: --info
- id: gs
  doc: genome sequence data
  type: string
  inputBinding:
    prefix: --gs
- id: reference
  doc: the refgene info file downloaded from UCSC genome browser.input this file only
    if your genome is neither hg18,hg19,hg38 nor mm9,mm10
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: the directory to store all the output files, if you don't set this, files will
    be output into the current directory
  type: string
  inputBinding:
    prefix: --output
- id: bl
  doc: wether or not use CTCF boundary to filter peaks around a gene, DEFAULT=FALSE
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
- id: method
  doc: Define the method to do the TF/CR function prediction, score for regulatory
    potential, distance for the distance to the proximal binding peak. DEFAULT:SCORE
  type: string
  inputBinding:
    prefix: --method
- id: name
  doc: this argument is used as the prefix of the result files. If not set, 'NA' will
    be used instead
  type: string
  inputBinding:
    prefix: --name
- id: distance
  doc: Set a number which unit is 'base'. It will get peaks within this distance from
    gene TSS. default:100000 (100kb)
  type: string
  inputBinding:
    prefix: --distance
- id: df
  doc: Input a number 0~1 as a threshold to pick out the most significant differential
    expressed genes by FDR, DEFAULT = 1, that is select all the genes
  type: string
  inputBinding:
    prefix: --df
- id: da
  doc: 'Get the most significant differential expressed genes by the percentage(0-1)
    or number(larger than 1)Input a number between 0-1, the rank based on fdr for
    example, 2000, so that the script will only consider top 2000 genes as the differentially
    expressed genes. DEFAULT = 0.5, that is select top 50 percent genes of up and
    down seprately. NOTE: if you want to use diff_fdr, please set this parameter to
    1, otherwise it will get the intersection of these two parameters'
  type: string
  inputBinding:
    prefix: --da
- id: cut_off
  doc: Input a number between 0~1 as a threshold to select the closer target gene
    list(up regulate or down regulate or both) with the p value was called by one
    side ks-test, DEFAULT = 0.001
  type: string
  inputBinding:
    prefix: --cutoff
- id: mn
  doc: 'Input a number between 0~1 as the p-value cutoff or larger than 1 as the number
    to get the motif retrieved in BETA output in html file. DEFAULT: 10'
  type: string
  inputBinding:
    prefix: --mn
outputs: []
cwlVersion: v1.1
baseCommand:
- BETA
- plus
