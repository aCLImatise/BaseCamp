class: CommandLineTool
id: pacbio_post_process.cwl
inputs:
- id: in_min_contig_length
  doc: Minimum length of contigs [2000]
  type: long
  inputBinding:
    prefix: --min_contig_length
- id: in_contained_percent_match
  doc: "Percent match identity when determining if a contig is\ncontained in another\
    \ [90]"
  type: long
  inputBinding:
    prefix: --contained_percent_match
- id: in_overlap_offset
  doc: "Offset from the ends where an overlap can be found\n[1000]"
  type: long
  inputBinding:
    prefix: --overlap_offset
- id: in_overlap_boundary_max
  doc: "Maximum boundary of the overlap between ends expressed\nas percentage of contig\
    \ length [50]"
  type: long
  inputBinding:
    prefix: --overlap_boundary_max
- id: in_overlap_min_length
  doc: Minimum length of overlap [1000]
  type: long
  inputBinding:
    prefix: --overlap_min_length
- id: in_overlap_max_length
  doc: Maximum length of overlap [3000]
  type: long
  inputBinding:
    prefix: --overlap_max_length
- id: in_min_trim_length
  doc: "Minimum trimmed length of contig over original length\n[0.89]"
  type: double
  inputBinding:
    prefix: --min_trim_length
- id: in_no_trim
  doc: Do not trim overlaps
  type: boolean
  inputBinding:
    prefix: --no_trim
- id: in_trim_rev_overlaps
  doc: Trim reversed overlaps
  type: boolean
  inputBinding:
    prefix: --trim_rev_overlaps
- id: in_overlap_percent_identity
  doc: "Percent match identity when determining if ends of\ncontig overlap [85]"
  type: long
  inputBinding:
    prefix: --overlap_percent_identity
- id: in_dna_a_hit_percent_identity
  doc: "Percent match identity when looking at hits to dnaA\n[80]"
  type: long
  inputBinding:
    prefix: --dnaA_hit_percent_identity
- id: in_dna_a_hit_length_minimum
  doc: "Minimum acceptable hit length to dnaA expressed as\npercentage of dnaA length\
    \ [95]"
  type: long
  inputBinding:
    prefix: --dnaA_hit_length_minimum
- id: in_no_bsub
  doc: Do not bsub quiver
  type: boolean
  inputBinding:
    prefix: --no_bsub
- id: in_reassembly_dir
  doc: "Directory for reassembler program to put temp files in\n[improved_assembly]"
  type: Directory
  inputBinding:
    prefix: --reassembly_dir
- id: in_debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pacbio_post_process
