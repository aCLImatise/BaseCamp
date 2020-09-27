class: CommandLineTool
id: BETA_basic.cwl
inputs:
- id: in_peak_file
  doc: "The bed format of peaks binding sites. (BETA support 3\nor 5 columns bed format,\
    \ CHROM, START, END (NAME,\nSCORE))"
  type: File
  inputBinding:
    prefix: --peakfile
- id: in_diff_expr
  doc: "IThe differential expression file get from limma for\nMicroArray ddata and\
    \ cuffdiff for RNAseq data"
  type: File
  inputBinding:
    prefix: --diff_expr
- id: in_kind
  doc: "the kind of your expression file,this is required,it\ncan be LIM, CUF, BSF,\
    \ O. LIM for LIMMA standard\nformat. CUF for CUFDIFF standard format, BSF for\
    \ BETA\nspecific format and O for other formats, if is 'O',\ncolumns infor required\
    \ via --info"
  type: string
  inputBinding:
    prefix: --kind
- id: in_genome
  doc: "Specify your species, hg38,hg19,hg18,mm10,mm9. for\nother genome assembily\
    \ versions of human and mouse or\nother species, ignore this paramter"
  type: string
  inputBinding:
    prefix: --genome
- id: in_g_name_two
  doc: "If this switch is on, gene or transcript IDs in files\ngiven through -e will\
    \ be considered as official gene\nsymbols, DEFAULT=FALSE"
  type: boolean
  inputBinding:
    prefix: --gname2
- id: in_info
  doc: "specify the geneID, up/down status and statistcal\nvalues column of your expression\
    \ data. NOTE: use a\ncomma as an connector. for example: 1,2,6 means geneID\n\
    in the 1st column, logFC in 2nd column and FDR in 6th\ncolumn. DEFAULT:1,2,6 for\
    \ LIMMA; 2,10,13 for Cuffdiff\nand 1,2,3 for BETA specific format. You'd better\
    \ set\nit based on your exact expression file"
  type: File
  inputBinding:
    prefix: --info
- id: in_reference
  doc: "the refgene info file downloaded from UCSC genome\nbrowser.input this file\
    \ only if your genome is neither\nhg18, hg19,hg38 nor mm9,mm10"
  type: File
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "the directory to store all the output files, if you\ndon't set this, files\
    \ will be output into the current\ndirectory"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_bl
  doc: "whether or not use CTCF boundary to filter peaks\naround a gene, DEFAULT=FALSE"
  type: boolean
  inputBinding:
    prefix: --bl
- id: in_bf
  doc: "CTCF conserved peaks bed file, use this only when you\nset --bl and the genome\
    \ is neither hg19 nor mm9"
  type: File
  inputBinding:
    prefix: --bf
- id: in_pn
  doc: "the number of peaks you want to consider,\nDEFAULT=10000"
  type: long
  inputBinding:
    prefix: --pn
- id: in_method
  doc: "Define the method to do the TF/CR function prediction,\nscore for regulatory\
    \ potential, distance for the\ndistance to the proximal binding peak. DEFAULT:SCORE"
  type: string
  inputBinding:
    prefix: --method
- id: in_name
  doc: "this argument is used as the prefix for the result\nfiles. If not set, 'NA'\
    \ will be used instead"
  type: string
  inputBinding:
    prefix: --name
- id: in_distance
  doc: "Set a number which unit is 'base'. It will get peaks\nwithin this distance\
    \ from gene TSS. default:100000\n(100kb)"
  type: long
  inputBinding:
    prefix: --distance
- id: in_df
  doc: "Input a number 0~1 as a threshold to pick out the most\nsignificant differential\
    \ expressed genes by FDR,\nDEFAULT = 1, that is select all the genes"
  type: long
  inputBinding:
    prefix: --df
- id: in_da
  doc: "Get the most significant differential expressed genes\nby the percentage(0-1)\
    \ or number(larger than 1)Input a\nnumber between 0-1, the rank based on fdr for\
    \ example,\n2000, so that the script will only consider top 2000\ngenes as the\
    \ differentially expressed genes. DEFAULT =\n0.5, that is select top 50 percent\
    \ genes of up and\ndown seprately. NOTE: if you want to use diff_fdr,\nplease\
    \ set this parameter to 1, otherwise it will get\nthe intersection of these two\
    \ parameters"
  type: long
  inputBinding:
    prefix: --da
- id: in_cut_off
  doc: "Input a number between 0~1 as a threshold to select\nthe closer target gene\
    \ list(up regulate or down\nregulate or both) with the p value was called by one\n\
    side ks-test, DEFAULT = 0.001\n"
  type: long
  inputBinding:
    prefix: --cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "the directory to store all the output files, if you\ndon't set this, files\
    \ will be output into the current\ndirectory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- BETA
- basic
