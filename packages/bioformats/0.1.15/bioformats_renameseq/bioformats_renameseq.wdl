version 1.0

task BioformatsRenameseq {
  input {
    Boolean? fast_a
    Int? column
    Boolean? revert
    Boolean? no_description
    File? comment_char
    File? separator
    Boolean? v
    String renaming_table
    String names
    String output_file
  }
  command <<<
    bioformats renameseq \
      ~{renaming_table} \
      ~{names} \
      ~{output_file} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if (revert) then "--revert" else ""} \
      ~{if (no_description) then "--no_description" else ""} \
      ~{if defined(comment_char) then ("--comment_char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    fast_a: "the input file is of the FASTA format"
    column: "the number of the column that contains sequence names\\nto be changed staring from 1"
    revert: "perform reverse renaming, that is, change original and\\nnew names in the renaming table"
    no_description: "remove descriptions from FASTA sequence names"
    comment_char: "a character that designates comment lines in the\\nspecified plain-text file"
    separator: "a symbol that separates columns in the specified\\nplain-text file\\n"
    v: ""
    renaming_table: "a file containing a table of original and new sequence"
    names: "input_file            a file to change sequence names in"
    output_file: "an output file with renamed sequences"
  }
  output {
    File out_stdout = stdout()
  }
}