version 1.0

task BedClip {
  input {
    Boolean? truncate
    Int? verbose
    String input_dot_bed
    String chrom_dot_sizes
  }
  command <<<
    bedClip \
      ~{input_dot_bed} \
      ~{chrom_dot_sizes} \
      ~{if (truncate) then "-truncate" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    truncate: "- truncate items that span ends of chrom instead of the\\ndefault of dropping the items"
    verbose: "- set to get list of lines clipped and why"
    input_dot_bed: ""
    chrom_dot_sizes: ""
  }
  output {
    File out_stdout = stdout()
  }
}