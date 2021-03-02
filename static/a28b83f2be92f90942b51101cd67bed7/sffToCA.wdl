version 1.0

task SffToCA {
  input {
    String? insert_size
    String? library_name
    Boolean? linker
    Boolean? linker_split
    Boolean? linker_trim
    Float? linker_detect
    Boolean? node_dup
    String? write_output_files
    String name_dot_frg
    String name_dot_log
  }
  command <<<
    sffToCA \
      ~{name_dot_frg} \
      ~{name_dot_log} \
      ~{if defined(insert_size) then ("-insertsize " +  '"' + insert_size + '"') else ""} \
      ~{if defined(library_name) then ("-libraryname " +  '"' + library_name + '"') else ""} \
      ~{if (linker) then "-linker" else ""} \
      ~{if (linker_split) then "-linkersplit" else ""} \
      ~{if (linker_trim) then "-linkertrim" else ""} \
      ~{if defined(linker_detect) then ("-linkerdetect " +  '"' + linker_detect + '"') else ""} \
      ~{if (node_dup) then "-nodedup" else ""} \
      ~{if defined(write_output_files) then ("-output " +  '"' + write_output_files + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    insert_size: "d        Mates are on average i +- d bp apart."
    library_name: "The UID of the library these reads are added to."
    linker: "[name | seq]   Search for linker, create mated reads.\\nName is one of:\\n'flx'      == GTTGGAACCGAAAGGGTTTGAATTCAAACCCTTTCGGTTCCAAC\\n'titanium' == TCGTATAACTTCGTATAATGTATGCTATACGAAGTTATTACG and\\nCGTAATAACTTCGTATAGCATACATTATACGAAGTTATACGA"
    linker_split: "id cv    Threshold for splitting linker into mate pairs (0.90, 0.50)."
    linker_trim: "id cv    Threshold for trimming linker out of a read (0.90, 0.33)."
    linker_detect: "cv    Threshold for detecting linker (0.85, 0.25)."
    node_dup: "Do not remove reads that are a perfect prefix of another read."
    write_output_files: "Write output to files prefixed with 'name'.  Three files are created:"
    name_dot_frg: "-- CA format fragments."
    name_dot_log: "-- Actions taken; deleted fragments, mate splits, etc."
  }
  output {
    File out_stdout = stdout()
  }
}