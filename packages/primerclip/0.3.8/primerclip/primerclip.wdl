version 1.0

task Primerclip {
  input {
    Boolean? bed_pe
    Boolean? single_end
    String output_sam_filename
  }
  command <<<
    primerclip \
      ~{output_sam_filename} \
      ~{if (bed_pe) then "--bedpe" else ""} \
      ~{if (single_end) then "--single-end" else ""}
  >>>
  parameter_meta {
    bed_pe: "add this switch to use BEDPE coordinate input format\\n(default format is master file)"
    single_end: "add this switch to trim primers from single-end\\nalignments\\n"
    output_sam_filename: "Trim PCR primer sequences from aligned reads"
  }
  output {
    File out_stdout = stdout()
  }
}