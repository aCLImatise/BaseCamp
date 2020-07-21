class: CommandLineTool
id: ../../../hicFindRestSite.cwl
inputs:
- id: fast_a
  doc: Path to fasta file for the organism genome.
  type: string
  inputBinding:
    prefix: --fasta
- id: search_pattern
  doc: Search pattern. For example, for HindIII this pattern is "AAGCTT". Both, forward
    and reverse strand are searched for a match. The pattern is a regexp and can contain
    regexp specif syntax (see https://docs.python.org/2/library/re.html). For example
    the patternCG..GC will find all occurrence of CG followed by any two bases and
    then GC.
  type: string
  inputBinding:
    prefix: --searchPattern
- id: outfile
  doc: Name for the resulting bed file.
  type: string
  inputBinding:
    prefix: --outFile
outputs: []
cwlVersion: v1.1
baseCommand:
- hicFindRestSite
