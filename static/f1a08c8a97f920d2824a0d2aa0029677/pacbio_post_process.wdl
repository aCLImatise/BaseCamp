version 1.0

task PacbioPostProcess {
  input {
    Int? min_contig_length
    Int? contained_percent_match
    Int? overlap_offset
    Int? overlap_boundary_max
    Int? overlap_min_length
    Int? overlap_max_length
    Float? min_trim_length
    Boolean? no_trim
    Boolean? trim_rev_overlaps
    Int? overlap_percent_identity
    Int? dna_a_hit_percent_identity
    Int? dna_a_hit_length_minimum
    Boolean? no_bsub
    String? reassembly_dir
    Boolean? debug
  }
  command <<<
    pacbio_post_process \
      ~{if defined(min_contig_length) then ("--min_contig_length " +  '"' + min_contig_length + '"') else ""} \
      ~{if defined(contained_percent_match) then ("--contained_percent_match " +  '"' + contained_percent_match + '"') else ""} \
      ~{if defined(overlap_offset) then ("--overlap_offset " +  '"' + overlap_offset + '"') else ""} \
      ~{if defined(overlap_boundary_max) then ("--overlap_boundary_max " +  '"' + overlap_boundary_max + '"') else ""} \
      ~{if defined(overlap_min_length) then ("--overlap_min_length " +  '"' + overlap_min_length + '"') else ""} \
      ~{if defined(overlap_max_length) then ("--overlap_max_length " +  '"' + overlap_max_length + '"') else ""} \
      ~{if defined(min_trim_length) then ("--min_trim_length " +  '"' + min_trim_length + '"') else ""} \
      ~{true="--no_trim" false="" no_trim} \
      ~{true="--trim_rev_overlaps" false="" trim_rev_overlaps} \
      ~{if defined(overlap_percent_identity) then ("--overlap_percent_identity " +  '"' + overlap_percent_identity + '"') else ""} \
      ~{if defined(dna_a_hit_percent_identity) then ("--dnaA_hit_percent_identity " +  '"' + dna_a_hit_percent_identity + '"') else ""} \
      ~{if defined(dna_a_hit_length_minimum) then ("--dnaA_hit_length_minimum " +  '"' + dna_a_hit_length_minimum + '"') else ""} \
      ~{true="--no_bsub" false="" no_bsub} \
      ~{if defined(reassembly_dir) then ("--reassembly_dir " +  '"' + reassembly_dir + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    min_contig_length: "Minimum length of contigs [2000]"
    contained_percent_match: "Percent match identity when determining if a contig is contained in another [90]"
    overlap_offset: "Offset from the ends where an overlap can be found [1000]"
    overlap_boundary_max: "Maximum boundary of the overlap between ends expressed as percentage of contig length [50]"
    overlap_min_length: "Minimum length of overlap [1000]"
    overlap_max_length: "Maximum length of overlap [3000]"
    min_trim_length: "Minimum trimmed length of contig over original length [0.89]"
    no_trim: "Do not trim overlaps"
    trim_rev_overlaps: "Trim reversed overlaps"
    overlap_percent_identity: "Percent match identity when determining if ends of contig overlap [85]"
    dna_a_hit_percent_identity: "Percent match identity when looking at hits to dnaA [80]"
    dna_a_hit_length_minimum: "Minimum acceptable hit length to dnaA expressed as percentage of dnaA length [95]"
    no_bsub: "Do not bsub quiver"
    reassembly_dir: "Directory for reassembler program to put temp files in [improved_assembly]"
    debug: "Keep all temp files"
  }
}