class: CommandLineTool
id: baseCalling_Matrix_calculator.cwl
inputs:
- id: r
  doc: "FASTA file [\e[0;0m.{gz,bz2} is OK\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: "SNP positions from (\e[0;1m<filename>\e[32;1m) in format /^ChrID\\tPos/. VCF\
    \ file with only SNP is OK.\e[32;1m"
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: "accepted MAPQ (\e[0;1m60\e[32;1m)\e[32;1m"
  type: long
  inputBinding:
    prefix: -m
- id: l
  doc: "length of reads (\e[0;1mint\e[32;1m) [\e[0;0mOptional. Specify to override\
    \ auto detected value.\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -l
- id: o
  doc: "prefix (\e[0;1m./matrix\e[32;1m).{count,ratio}.matrix and .{stat,info}\e[32;1m"
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: "list file [\e[0;0mto specify a subset of chromosomes, one per line\e[32;1m]\e\
    [32;1m"
  type: string
  inputBinding:
    prefix: -c
- id: q
  doc: "Qascii=64 for sam files instead of 33\e[32;1m"
  type: string
  inputBinding:
    prefix: -q
- id: t
  doc: "ChrID in ref fasta file to match alignment results (\e[0;1mnone\e[32;1m) [\e\
    [0;0muse RegEx for s/$ARG//;\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- baseCalling_Matrix_calculator
