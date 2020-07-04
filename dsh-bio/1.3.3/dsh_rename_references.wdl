version 1.0

task DshRenameReferences {
  input {
    Boolean? about
    Boolean? chr
    Boolean? input_gff_three_file
    Boolean? output_gff_three_file
  }
  command <<<
    dsh-rename-references \
      ~{true="--about" false="" about} \
      ~{true="--chr" false="" chr} \
      ~{true="--input-gff3-file" false="" input_gff_three_file} \
      ~{true="--output-gff3-file" false="" output_gff_three_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    chr: "add \"chr\" to chromosome names [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
  }
}