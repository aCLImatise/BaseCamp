version 1.0

task BioformatsRenameseq {
  input {
    Boolean? fast_a
    String? column
    Boolean? revert
    Boolean? no_description
    String? comment_char
    String? separator
    Boolean? v
    String renaming_table
    String input_file
    String output_file
  }
  command <<<
    bioformats renameseq \
      ~{renaming_table} \
      ~{input_file} \
      ~{output_file} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{true="--revert" false="" revert} \
      ~{true="--no_description" false="" no_description} \
      ~{if defined(comment_char) then ("--comment_char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    fast_a: "the input file is of the FASTA format"
    column: "the number of the column that contains sequence names to be changed staring from 1"
    revert: "perform reverse renaming, that is, change original and new names in the renaming table"
    no_description: "remove descriptions from FASTA sequence names"
    comment_char: "a character that designates comment lines in the specified plain-text file"
    separator: "a symbol that separates columns in the specified plain-text file"
    v: ""
    renaming_table: "a file containing a table of original and new sequence names"
    input_file: "a file to change sequence names in"
    output_file: "an output file with renamed sequences"
  }
}