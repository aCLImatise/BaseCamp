version 1.0

task PhyluceAlignGetGblocksTrimmedAlignmentsFromUntrimmed {
  input {
    Directory? alignments
    Directory? directory_store_resultingalignments
    String? input_format
    String? output_format
    Int? bone
    Int? b_two
    Int? b_three
    Int? b_four
    String? verbosity
    File? log_path
    Int? cores
  }
  command <<<
    phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_resultingalignments) then ("--output " +  '"' + directory_store_resultingalignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(b_three) then ("--b3 " +  '"' + b_three + '"') else ""} \
      ~{if defined(b_four) then ("--b4 " +  '"' + b_four + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be trimmed.\\n(default: None)"
    directory_store_resultingalignments: "The directory in which to store the resulting\\nalignments. (default: None)"
    input_format: "The input alignment format. (default: fasta)"
    output_format: "The output alignment format. (default: nexus)"
    bone: "The GBLOCKS -b1 proportion. (default: 0.5)"
    b_two: "The GBLOCKS -b2 proportion. (default: 0.85)"
    b_three: "The GBLOCKS -b3 integer value. (default: 8)"
    b_four: "The GBLOCKS -b4 integer value. (default: 10)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}