class: CommandLineTool
id: ../../../baseCalling_Matrix_calculator.cwl
inputs:
- id: fasta_file_m
  doc: "FASTA file [\e[0;0m.{gz,bz2} is OK\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -r
- id: snp_positions_mfilenamem
  doc: "SNP positions from (\e[0;1m<filename>\e[32;1m) in format /^ChrID\\tPos/. VCF\
    \ file with only SNP is OK.\e[32;1m"
  type: string
  inputBinding:
    prefix: -s
- id: accepted_mapq_mmm
  doc: "accepted MAPQ (\e[0;1m60\e[32;1m)\e[32;1m"
  type: long
  inputBinding:
    prefix: -m
- id: length_reads_m
  doc: "length of reads (\e[0;1mint\e[32;1m) [\e[0;0mOptional. Specify to override\
    \ auto detected value.\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -l
- id: prefix_mmatrixmm
  doc: "prefix (\e[0;1m./matrix\e[32;1m).{count,ratio}.matrix and .{stat,info}\e[32;1m"
  type: string
  inputBinding:
    prefix: -o
- id: list_file_m
  doc: "list file [\e[0;0mto specify a subset of chromosomes, one per line\e[32;1m]\e\
    [32;1m"
  type: string
  inputBinding:
    prefix: -c
- id: qascii_sam_files
  doc: "Qascii=64 for sam files instead of 33\e[32;1m"
  type: string
  inputBinding:
    prefix: -q
- id: chrid_match_m
  doc: "ChrID in ref fasta file to match alignment results (\e[0;1mnone\e[32;1m) [\e\
    [0;0muse RegEx for s/$ARG//;\e[32;1m]\e[32;1m"
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- baseCalling_Matrix_calculator
