version 1.0

task ContigOverlapTrimmer {
  input {
    Boolean? no_trim
    Boolean? trim_rev_overlaps
    Int? overlap_offset
    Int? overlap_boundary_max
    Int? overlap_min_length
    Int? overlap_max_length
    Int? overlap_percent_id
    Float? min_trim_length
    File? skip
    Boolean? debug
  }
  command <<<
    contig_overlap_trimmer \
      ~{if (no_trim) then "--no_trim" else ""} \
      ~{if (trim_rev_overlaps) then "--trim_rev_overlaps" else ""} \
      ~{if defined(overlap_offset) then ("--overlap_offset " +  '"' + overlap_offset + '"') else ""} \
      ~{if defined(overlap_boundary_max) then ("--overlap_boundary_max " +  '"' + overlap_boundary_max + '"') else ""} \
      ~{if defined(overlap_min_length) then ("--overlap_min_length " +  '"' + overlap_min_length + '"') else ""} \
      ~{if defined(overlap_max_length) then ("--overlap_max_length " +  '"' + overlap_max_length + '"') else ""} \
      ~{if defined(overlap_percent_id) then ("--overlap_percent_id " +  '"' + overlap_percent_id + '"') else ""} \
      ~{if defined(min_trim_length) then ("--min_trim_length " +  '"' + min_trim_length + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_trim: "Do not trim overlaps"
    trim_rev_overlaps: "Trim reversed overlaps"
    overlap_offset: "Minimum offset from ends to look for overlaps [1000]"
    overlap_boundary_max: "Maximum boundary of overlap expressed as percentage of\\ncontig length [50]"
    overlap_min_length: "Minimum length of a overlap [1000]"
    overlap_max_length: "Maximum length of a overlap [3000]"
    overlap_percent_id: "Minimum acceptable hit percent id for overlaps [85]"
    min_trim_length: "Minimum acceptable trimmed length expressed as\\npercentage of total contig length [0.89]"
    skip: "File of contig ids to skip"
    debug: "Keep all temp files"
  }
  output {
    File out_stdout = stdout()
  }
}