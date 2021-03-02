version 1.0

task SambambaSlice {
  input {
    File? output_filename
    File? regions
    Boolean? fast_a_input
    String samba_mba_slice
    String input_dot_bam_vertical_line_input_dot_fast_a
  }
  command <<<
    sambamba slice \
      ~{samba_mba_slice} \
      ~{input_dot_bam_vertical_line_input_dot_fast_a} \
      ~{if defined(output_filename) then ("--output-filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (fast_a_input) then "--fasta-input" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    output_filename: "output BAM or FASTA filename"
    regions: "output only reads overlapping one of regions from the BED file"
    fast_a_input: "specify that input is in FASTA format\\n"
    samba_mba_slice: ""
    input_dot_bam_vertical_line_input_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
    File out_regions = "${in_regions}"
  }
}