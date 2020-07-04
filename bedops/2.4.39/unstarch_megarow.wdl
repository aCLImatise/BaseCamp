version 1.0

task UnstarchMegarow {
  input {
    Boolean? list_chromosomes
    Boolean? note
    Boolean? signature
    Boolean? verify_signature
    Boolean? archive_timestamp
    Boolean? archive_type
    Boolean? archive_version
    Boolean? is_starch
    String un_starch
    String? chromosome
  }
  command <<<
    unstarch-megarow \
      ~{un_starch} \
      ~{chromosome} \
      ~{true="--list-chromosomes" false="" list_chromosomes} \
      ~{true="--note" false="" note} \
      ~{true="--signature" false="" signature} \
      ~{true="--verify-signature" false="" verify_signature} \
      ~{true="--archive-timestamp" false="" archive_timestamp} \
      ~{true="--archive-type" false="" archive_type} \
      ~{true="--archive-version" false="" archive_version} \
      ~{true="--is-starch" false="" is_starch}
  >>>
  parameter_meta {
    list_chromosomes: "List all or specified chromosome in starch archive (like \"bedextract --list- chr\"). If <chromosome> is specified but is not in the output list, nothing is returned."
    note: "Show descriptive note, if available."
    signature: "Display the Base64-encoded SHA-1 data integrity signature for specified <chromosome>, or the signatures of the metadata and all available chromosomes, if the <chromosome> is unspecified."
    verify_signature: "Verify data integrity of specified <chromosome>, or the integrity of all available chromosomes, if the <chromosome> is unspecified."
    archive_timestamp: "Show archive creation timestamp (ISO 8601 format)."
    archive_type: "Show archive compression type."
    archive_version: "Show archive version."
    is_starch: "Test if <starch-file> is a valid archive and print 0/1 (false/true) to standard output. Unstarch will also return a non- zero error code if the input file is not a valid archive."
    un_starch: ""
    chromosome: ""
  }
}