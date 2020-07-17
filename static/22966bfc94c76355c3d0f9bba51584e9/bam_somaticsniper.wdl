version 1.0

task BamSomaticsniper {
  input {
    File? required_reference_sequence
  }
  command <<<
    bam-somaticsniper \
      ~{if defined(required_reference_sequence) then ("-f " +  '"' + required_reference_sequence + '"') else ""}
  >>>
  parameter_meta {
    required_reference_sequence: "REQUIRED reference sequence in the FASTA format"
  }
}