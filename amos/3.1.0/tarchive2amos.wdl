version 1.0

task Tarchive2amos {
  input {
    String? file_containing_ranges
    String? file_containing_matepair_information
    String? file_containing_meanstdev_information
    String? start_numbering_messages
    Int? min
    Int? max
    String? qual
  }
  command <<<
    tarchive2amos \
      ~{if defined(file_containing_ranges) then ("-c " +  '"' + file_containing_ranges + '"') else ""} \
      ~{if defined(file_containing_matepair_information) then ("-m " +  '"' + file_containing_matepair_information + '"') else ""} \
      ~{if defined(file_containing_meanstdev_information) then ("-l " +  '"' + file_containing_meanstdev_information + '"') else ""} \
      ~{if defined(start_numbering_messages) then ("-i " +  '"' + start_numbering_messages + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""}
  >>>
  parameter_meta {
    file_containing_ranges: "- file containing clear ranges for the reads.  If this file is provided, any sequence that does not appear in it is excluded from the output."
    file_containing_matepair_information: "- file containing mate-pair information as specified in the BAMBUS documentation.  This file replaces information provided in .xml files"
    file_containing_meanstdev_information: "- file containing mean/stdev information for libraries. Overrides .xml input."
    start_numbering_messages: "- start numbering messages with id <id> (useful when appending to a bank)"
    min: "- reads shorter than <minlen> are rejected (default 0)"
    max: "- reads longer than <maxlen> are rejected (default no limit)"
    qual: "- default quality value assigned when no quality file is provided (default 20)"
  }
}