class: CommandLineTool
id: cactus_coverage.cwl
inputs:
- id: in_only_contig_one
  doc: ': Only print coverage that occurs when a sequence from the fasta is in the
    contig1 field of the CIGAR.'
  type: boolean?
  inputBinding:
    prefix: --onlyContig1
- id: in_only_contig_two
  doc: ': Only print coverage that occurs when a sequence from the fasta is in the
    contig2 field of the CIGAR.'
  type: boolean?
  inputBinding:
    prefix: --onlyContig2
- id: in_depth_by_id
  doc: ": Assume that headers have an 'id=N|' prefix, where N is an integer. Score\
    \ coverage depth by the number of different prefixes that align to a region, rather\
    \ than the total number of alignments. Uses much more memory than the standard\
    \ mode."
  type: boolean?
  inputBinding:
    prefix: --depthById
- id: in_from
  doc: ': Only consider alignments for which one sequence is in fastaFile and the
    other is in fromFastaFile.'
  type: File?
  inputBinding:
    prefix: --from
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_coverage
