version 1.0

task BioformatsGff2to3 {
  input {
    Boolean? ignore_incorrect_records
    Boolean? v
    String gff_two_file
    String output_file
  }
  command <<<
    bioformats gff2to3 \
      ~{gff_two_file} \
      ~{output_file} \
      ~{true="--ignore_incorrect_records" false="" ignore_incorrect_records} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    ignore_incorrect_records: "ignore incorrect records in the specified input GFF2 file"
    v: ""
    gff_two_file: "a GFF2 file"
    output_file: "the output GFF3 file"
  }
}