version 1.0

task BioformatsNcbirenameseq {
  input {
    Boolean? fast_a
    String? column
    String? comment_char
    String? separator
    String? chr
    String? unloc
    String? un_pl
    String? prefix
    String? prefix_chr
    String? prefix_unloc
    String? prefix_un_pl
    String? suffix
    String? suffix_chr
    String? suffix_unloc
    String? suffix_un_pl
    Boolean? revert
    Boolean? no_version
    Boolean? no_description
    String? output_table
    Boolean? v
    String bio_formats
    String? var_command
  }
  command <<<
    bioformats ncbirenameseq \
      ~{bio_formats} \
      ~{var_command} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(comment_char) then ("--comment_char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(unloc) then ("--unloc " +  '"' + unloc + '"') else ""} \
      ~{if defined(un_pl) then ("--unpl " +  '"' + un_pl + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(prefix_chr) then ("--prefix_chr " +  '"' + prefix_chr + '"') else ""} \
      ~{if defined(prefix_unloc) then ("--prefix_unloc " +  '"' + prefix_unloc + '"') else ""} \
      ~{if defined(prefix_un_pl) then ("--prefix_unpl " +  '"' + prefix_un_pl + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(suffix_chr) then ("--suffix_chr " +  '"' + suffix_chr + '"') else ""} \
      ~{if defined(suffix_unloc) then ("--suffix_unloc " +  '"' + suffix_unloc + '"') else ""} \
      ~{if defined(suffix_un_pl) then ("--suffix_unpl " +  '"' + suffix_un_pl + '"') else ""} \
      ~{true="--revert" false="" revert} \
      ~{true="--no_version" false="" no_version} \
      ~{true="--no_description" false="" no_description} \
      ~{if defined(output_table) then ("--output_table " +  '"' + output_table + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    fast_a: "the input file is of the FASTA format"
    column: "the number of the column that contains sequence names to be changed (1 by default)"
    comment_char: "a character designating comment lines in the specified plain text file"
    separator: "a symbol separating columns in the specified plain text file"
    chr: "a name of a file containing NCBI chromosome accession numbers"
    unloc: "a name of a file containing NCBI accession numbers of unlocalized fragments"
    un_pl: "a name of a file containing NCBI accession numbers of unplaced fragments"
    prefix: "a prefix to be added to sequence names"
    prefix_chr: "a prefix to be added to chromosome names"
    prefix_unloc: "a prefix to be added to unlocalized fragment names"
    prefix_un_pl: "a prefix to be added to unplaced fragment names"
    suffix: "a suffix to be added to sequence names"
    suffix_chr: "a suffix to be added to chromosome names"
    suffix_unloc: "a suffix to be added to unlocalized fragment names"
    suffix_un_pl: "a suffix to be added to unplaced fragment names"
    revert: "perform reverse renaming, that is, change original and new names in the renaming table"
    no_version: "remove a sequence version from an accession number"
    no_description: "remove descriptions from FASTA sequence headers"
    output_table: "write the renaming table to the specified file"
    v: ""
    bio_formats: ""
    var_command: ""
  }
}