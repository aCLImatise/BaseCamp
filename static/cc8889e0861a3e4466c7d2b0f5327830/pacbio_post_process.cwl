class: CommandLineTool
id: pacbio_post_process.cwl
inputs:
- id: min_contig_length
  doc: Minimum length of contigs [2000]
  type: long
  inputBinding:
    prefix: --min_contig_length
- id: contained_percent_match
  doc: Percent match identity when determining if a contig is contained in another
    [90]
  type: long
  inputBinding:
    prefix: --contained_percent_match
- id: overlap_offset
  doc: Offset from the ends where an overlap can be found [1000]
  type: long
  inputBinding:
    prefix: --overlap_offset
- id: overlap_boundary_max
  doc: Maximum boundary of the overlap between ends expressed as percentage of contig
    length [50]
  type: long
  inputBinding:
    prefix: --overlap_boundary_max
- id: overlap_min_length
  doc: Minimum length of overlap [1000]
  type: long
  inputBinding:
    prefix: --overlap_min_length
- id: overlap_max_length
  doc: Maximum length of overlap [3000]
  type: long
  inputBinding:
    prefix: --overlap_max_length
- id: min_trim_length
  doc: Minimum trimmed length of contig over original length [0.89]
  type: double
  inputBinding:
    prefix: --min_trim_length
- id: no_trim
  doc: Do not trim overlaps
  type: boolean
  inputBinding:
    prefix: --no_trim
- id: trim_rev_overlaps
  doc: Trim reversed overlaps
  type: boolean
  inputBinding:
    prefix: --trim_rev_overlaps
- id: overlap_percent_identity
  doc: Percent match identity when determining if ends of contig overlap [85]
  type: long
  inputBinding:
    prefix: --overlap_percent_identity
- id: dna_a_hit_percent_identity
  doc: Percent match identity when looking at hits to dnaA [80]
  type: long
  inputBinding:
    prefix: --dnaA_hit_percent_identity
- id: dna_a_hit_length_minimum
  doc: Minimum acceptable hit length to dnaA expressed as percentage of dnaA length
    [95]
  type: long
  inputBinding:
    prefix: --dnaA_hit_length_minimum
- id: no_bsub
  doc: Do not bsub quiver
  type: boolean
  inputBinding:
    prefix: --no_bsub
- id: reassembly_dir
  doc: Directory for reassembler program to put temp files in [improved_assembly]
  type: string
  inputBinding:
    prefix: --reassembly_dir
- id: debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- pacbio_post_process
