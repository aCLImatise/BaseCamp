version 1.0

task MafConvert {
  input {
    Boolean? protein
    String? join
    Boolean? noheader
    Boolean? dictionary
    String? dict_file
    String? read_group
    String? line_size
  }
  command <<<
    maf-convert \
      ~{true="--protein" false="" protein} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{true="--noheader" false="" noheader} \
      ~{true="--dictionary" false="" dictionary} \
      ~{if defined(dict_file) then ("--dictfile " +  '"' + dict_file + '"') else ""} \
      ~{if defined(read_group) then ("--readgroup " +  '"' + read_group + '"') else ""} \
      ~{if defined(line_size) then ("--linesize " +  '"' + line_size + '"') else ""}
  >>>
  parameter_meta {
    protein: "assume protein alignments, for psl match counts"
    join: "join co-linear alignments separated by <= N letters"
    noheader: "omit any header lines from the output"
    dictionary: "include dictionary of sequence lengths in sam format"
    dict_file: "get sequence dictionary from DICTFILE"
    read_group: "read group info for sam format"
    line_size: "line length for blast and html formats (default: 60)"
  }
}