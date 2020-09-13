version 1.0

task CactusHalGenerator {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? secondary_disk
    Boolean? reference_event_string
    File? output_file
    Boolean? show_only_substitutions_with_respect_to_reference
  }
  command <<<
    cactus_halGenerator \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (secondary_disk) then "--secondaryDisk" else ""} \
      ~{if (reference_event_string) then "--referenceEventString" else ""} \
      ~{if (output_file) then "--outputFile" else ""} \
      ~{if (show_only_substitutions_with_respect_to_reference) then "--showOnlySubstitutionsWithRespectToReference" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    secondary_disk: ": The location of secondary disk"
    reference_event_string: ": String identifying the reference event."
    output_file: ": File to put final output in."
    show_only_substitutions_with_respect_to_reference: ": Put stars in place of characters that are identical to the reference."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}