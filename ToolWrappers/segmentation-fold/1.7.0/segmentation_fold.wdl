version 1.0

task Segmentationfold {
  input {
    String? specific_rna_sequence
    File? path_fastafile_containing
    Boolean? enabledisable_segment_functionality
    Int? minimum_hairpin_size
    File? use_custom_file
    Int? number_threads_ndefault
    File? default_xml
    String system
  }
  command <<<
    segmentation_fold \
      ~{system} \
      ~{if defined(specific_rna_sequence) then ("-s " +  '"' + specific_rna_sequence + '"') else ""} \
      ~{if defined(path_fastafile_containing) then ("-f " +  '"' + path_fastafile_containing + '"') else ""} \
      ~{if (enabledisable_segment_functionality) then "-p" else ""} \
      ~{if defined(minimum_hairpin_size) then ("-H " +  '"' + minimum_hairpin_size + '"') else ""} \
      ~{if defined(use_custom_file) then ("-x " +  '"' + use_custom_file + '"') else ""} \
      ~{if defined(number_threads_ndefault) then ("-t " +  '"' + number_threads_ndefault + '"') else ""} \
      ~{if defined(default_xml) then ("--default-xml " +  '"' + default_xml + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specific_rna_sequence: "Specific RNA SEQUENCE (overrules -f)"
    path_fastafile_containing: "Path of FASTA_FILE containing sequence(s)"
    enabledisable_segment_functionality: "Enable/disable segment functionality           [1/0]"
    minimum_hairpin_size: "Minimum hairpin size, default: 3               [1,N}"
    use_custom_file: "Use custom  \\\"segments.xml\\\"-syntaxed file"
    number_threads_ndefault: "Number of threads; 0 = maximum available,      [0,N}\\ndefault: 3"
    default_xml: "path to default \\\"segments.xml\\\" on"
    system: "If you encounter problems with this software, please report it at:"
  }
  output {
    File out_stdout = stdout()
  }
}