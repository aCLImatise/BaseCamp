version 1.0

task PhyluceProbeGetScreenedLociByProximity {
  input {
    Int? var_output
    File? fasta_file_input
    String? distance
    Int? length
  }
  command <<<
    phyluce_probe_get_screened_loci_by_proximity \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(fasta_file_input) then ("--input " +  '"' + fasta_file_input + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--distance DISTANCE]\\n[--length LENGTH]"
    fasta_file_input: "The FASTA file of input sequences"
    distance: "The minimum distance on which to filter"
    length: "The minimum length of sequences to filter"
  }
  output {
    File out_stdout = stdout()
  }
}