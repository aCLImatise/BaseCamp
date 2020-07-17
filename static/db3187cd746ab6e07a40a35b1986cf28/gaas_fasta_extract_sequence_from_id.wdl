version 1.0

task GaasFastaExtractSequenceFromId.pl {
  input {
    String? fast_a
    Boolean? name
    Boolean? line
    Boolean? col
    Boolean? field_separator_unprintable
    String? output_gff_file
  }
  command <<<
    gaas_fasta_extract_sequence_from_id.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--name" false="" name} \
      ~{true="--line" false="" line} \
      ~{true="--col" false="" col} \
      ~{true="-q" false="" field_separator_unprintable} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Input fasta file."
    name: "Could be a sequence name to retrieve in the fasta file, or a file containing a list of sequence name (one by line)."
    line: "Integer, number of line to avoid. Allow to avoid headers."
    col: "column containing the ID. By default the first column is considered."
    field_separator_unprintable: "Field separator, by default un-printable character are use as separator (\s). You can define the one you wnat with this option."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}