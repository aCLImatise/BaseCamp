version 1.0

task QuasitoolsComplexityFasta {
  input {
    File? output_location
    String fast_a_location
  }
  command <<<
    quasitools complexity fasta \
      ~{fast_a_location} \
      ~{if defined(output_location) then ("--output_location " +  '"' + output_location + '"') else ""}
  >>>
  parameter_meta {
    output_location: "Output the quasispecies complexity in CSV format to the specified file."
    fast_a_location: ""
  }
}