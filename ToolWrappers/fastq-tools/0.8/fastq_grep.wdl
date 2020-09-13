version 1.0

task Fastqgrep {
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
    fastq_grep \
      ~{if (id) then "--id" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (trim_after) then "--trim_after" else ""} \
      ~{if (trim_before) then "--trim_before" else ""} \
      ~{if (trim_match) then "--trim_match" else ""}
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
  output {
    File out_stdout = stdout()
    File out_mismatches = "${in_mismatches}"
  }
}