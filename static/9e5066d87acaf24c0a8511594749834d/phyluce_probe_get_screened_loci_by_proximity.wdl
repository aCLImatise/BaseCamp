version 1.0

task PhyluceProbeGetScreenedLociByProximity {
  input {
    String? fasta_file_input
    String? output_fasta_file
    String? distance
    Int? length
  }
  command <<<
    phyluce_probe_get_screened_loci_by_proximity \
      ~{if defined(fasta_file_input) then ("--input " +  '"' + fasta_file_input + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    fasta_file_input: "The FASTA file of input sequences"
    output_fasta_file: "The output FASTA file of filtered sequences"
    distance: "The minimum distance on which to filter"
    length: "The minimum length of sequences to filter"
  }
}