version 1.0

task SambambaSlice {
  input {
    String? output_filename
    File? regions
    String samba_mba_slice
    String input_dot_bam
  }
  command <<<
    sambamba slice \
      ~{samba_mba_slice} \
      ~{input_dot_bam} \
      ~{if defined(output_filename) then ("--output-filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""}
  >>>
  parameter_meta {
    output_filename: "output BAM filename"
    regions: "output only reads overlapping one of regions from the BED file"
    samba_mba_slice: ""
    input_dot_bam: ""
  }
}