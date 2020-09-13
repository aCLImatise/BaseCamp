version 1.0

task ProbeMatch {
  input {
    Int? max_dist
    File? outfile
    String primer_match
    String primer_list_vertical_line_primer_file
    String seq_file
  }
  command <<<
    ProbeMatch \
      ~{primer_match} \
      ~{primer_list_vertical_line_primer_file} \
      ~{seq_file} \
      ~{if defined(max_dist) then ("--maxDist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    max_dist: "Give a max distance"
    outfile: "Write output to a file"
    primer_match: ""
    primer_list_vertical_line_primer_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}