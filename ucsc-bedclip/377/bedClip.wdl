version 1.0

task BedClip {
  input {
    Boolean? truncate
    String? verbose
    String input_dot_bed
    String chrom_dot_sizes
    String output_dot_bed
  }
  command <<<
    bedClip \
      ~{input_dot_bed} \
      ~{chrom_dot_sizes} \
      ~{output_dot_bed} \
      ~{true="-truncate" false="" truncate} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    truncate: "- truncate items that span ends of chrom instead of the default of dropping the items"
    verbose: "- set to get list of lines clipped and why"
    input_dot_bed: ""
    chrom_dot_sizes: ""
    output_dot_bed: ""
  }
}