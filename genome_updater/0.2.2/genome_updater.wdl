version 1.0

task GenomeUpdater.sh {
  input {
    String? print_debug_information
  }
  command <<<
    genome_updater.sh \
      ~{if defined(print_debug_information) then ("-D " +  '"' + print_debug_information + '"') else ""}
  >>>
  parameter_meta {
    print_debug_information: "print debug information and exit"
  }
}