version 1.0

task BioformatsGff2to3 {
  input {
    Boolean? ignore_incorrect_records
    Boolean? v
    Int gff_two_file
    String output_file
  }
  command <<<
    bioformats gff2to3 \
      ~{gff_two_file} \
      ~{output_file} \
      ~{if (ignore_incorrect_records) then "--ignore_incorrect_records" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    ignore_incorrect_records: "ignore incorrect records in the specified input GFF2\\nfile\\n"
    v: ""
    gff_two_file: "a GFF2 file"
    output_file: "the output GFF3 file"
  }
  output {
    File out_stdout = stdout()
  }
}