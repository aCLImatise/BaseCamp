version 1.0

task PhyluceAssemblyFilterSeqsFromFastas {
  input {
    Directory? directory_containing_sequences
    File? filtered_sequences_file
    Int? cores
    String? verbosity
    File? log_path
    Boolean? trim_length
    Boolean? trim_count
    Int? proportion
    Int? count
    Boolean? var_9
    String _filteredsequencesfile
    String short_sequences_file
    String filter_dot
  }
  command <<<
    phyluce_assembly_filter_seqs_from_fastas \
      ~{_filteredsequencesfile} \
      ~{short_sequences_file} \
      ~{filter_dot} \
      ~{if defined(directory_containing_sequences) then ("--input " +  '"' + directory_containing_sequences + '"') else ""} \
      ~{if defined(filtered_sequences_file) then ("--filtered-sequences-file " +  '"' + filtered_sequences_file + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (trim_length) then "--trim-length" else ""} \
      ~{if (trim_count) then "--trim-count" else ""} \
      ~{if defined(proportion) then ("--proportion " +  '"' + proportion + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if (var_9) then "--output" else ""}
  >>>
  parameter_meta {
    directory_containing_sequences: "The directory containing the FASTA sequences to"
    filtered_sequences_file: "The file that will contain names of sequences (and\\nloci) removed"
    cores: "The number of compute cores to use"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    trim_length: ""
    trim_count: ""
    proportion: "Proportion of the median length that will serve as cut\\noff (default=0.5)"
    count: "Number of sequences per locus that will serve as cut\\noff (default=4).\\n"
    var_9: ""
    _filteredsequencesfile: "--filtered-sequences-file"
    short_sequences_file: "[--cores CORES]"
    filter_dot: "--output OUTPUT       An output directory to hold the converted alignments."
  }
  output {
    File out_stdout = stdout()
  }
}