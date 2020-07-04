version 1.0

task FastqGrep {
  input {
    Boolean? id
    Boolean? invert_match
    File? mismatches
    Boolean? count
    Boolean? trim_after
    Boolean? trim_before
    Boolean? trim_match
  }
  command <<<
    fastq-grep \
      ~{true="--id" false="" id} \
      ~{true="--invert-match" false="" invert_match} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--trim_after" false="" trim_after} \
      ~{true="--trim_before" false="" trim_before} \
      ~{true="--trim_match" false="" trim_match}
  >>>
  parameter_meta {
    id: "match the read id (by default, sequence is matched)"
    invert_match: "select nonmatching entries"
    mismatches: "output mismatching entries to the given file"
    count: "output only the number of matching sequences"
    trim_after: "trim output after the match end"
    trim_before: "trim output before the match start"
    trim_match: "trim the match itself, regardless of trimming mode"
  }
}