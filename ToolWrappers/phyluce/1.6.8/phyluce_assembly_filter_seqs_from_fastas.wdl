version 1.0

task PhyluceAssemblyFilterSeqsFromFastas {
  input {
    Directory? directory_containing_sequences
    Int? count
    Boolean? var_2
    String _filteredsequencesfile
    String short_sequences_file
  }
  command <<<
    phyluce_assembly_filter_seqs_from_fastas \
      ~{_filteredsequencesfile} \
      ~{short_sequences_file} \
      ~{if defined(directory_containing_sequences) then ("--input " +  '"' + directory_containing_sequences + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if (var_2) then "--output" else ""}
  >>>
  parameter_meta {
    directory_containing_sequences: "The directory containing the FASTA sequences to"
    count: "Number of sequences per locus that will serve as cut"
    var_2: ""
    _filteredsequencesfile: "--filtered-sequences-file"
    short_sequences_file: "[--cores CORES]"
  }
  output {
    File out_stdout = stdout()
  }
}