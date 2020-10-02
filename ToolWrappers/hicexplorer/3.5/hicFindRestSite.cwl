class: CommandLineTool
id: hicFindRestSite.cwl
inputs:
- id: in_fast_a
  doc: Path to fasta file for the organism genome.
  type: File
  inputBinding:
    prefix: --fasta
- id: in_search_pattern
  doc: "Search pattern. For example, for HindIII this pattern\nis \"AAGCTT\". Both,\
    \ forward and reverse strand are\nsearched for a match. The pattern is a regexp\
    \ and can\ncontain regexp specif syntax (see\nhttps://docs.python.org/2/library/re.html).\
    \ For\nexample the patternCG..GC will find all occurrence of\nCG followed by any\
    \ two bases and then GC."
  type: long
  inputBinding:
    prefix: --searchPattern
- id: in_outfile
  doc: Name for the resulting bed file.
  type: File
  inputBinding:
    prefix: --outFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicFindRestSite
