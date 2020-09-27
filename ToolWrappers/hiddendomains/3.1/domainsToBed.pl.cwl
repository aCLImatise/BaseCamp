class: CommandLineTool
id: domainsToBed.pl.cwl
inputs:
- id: in_binwidththe_width_bin
  doc: "BIN_WIDTH\nThe width of the bin.  Default is 1000bp."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_chrominfotxtif_you_get
  doc: "ChromInfo.txt\nIf you get an out of bounds error when uploading a bed file\
    \ to the UCSC\ngenome browser, you can use this option to trim the bounds to the\
    \ size of\nthe chromosomes.\nChromInfo.txt should be a tab delimited file with\
    \ the chromosome names\nin the first column and their sizes in the second column.\
    \  Here is an\nexample ChromInfo.txt file for a genome with 3 chromosomes:\nchr1\
    \    197195432\nchr2    181748087\nchr3    159599783"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_create_a_trackline
  doc: Create a trackline.
  type: boolean
  inputBinding:
    prefix: -t
- id: in_tracknamethe_name_want
  doc: "TRACK_NAME\nThe name you want to give your track. The default is to use the\
    \ name of\nthe domainFile (without the .txt suffix)\n"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_domain_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- domainsToBed.pl
