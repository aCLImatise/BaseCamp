version 1.0

task CrisprtoolsExtract {
  input {
    File? output_file_directory
    String? give_custom_prefix
    Array[Int] comma_separated_list
    File? extract_spacers_listed
    File? extract_direct_repeats
    File? extract_flanking_sequences
    Boolean? supress_coverage_information
    String? header_prefix
    File? split_group
  }
  command <<<
    crisprtools extract \
      ~{if defined(output_file_directory) then ("-o " +  '"' + output_file_directory + '"') else ""} \
      ~{if defined(give_custom_prefix) then ("-O " +  '"' + give_custom_prefix + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-g " +  '"' + comma_separated_list + '"') else ""} \
      ~{if (extract_spacers_listed) then "-s" else ""} \
      ~{if (extract_direct_repeats) then "-d" else ""} \
      ~{if (extract_flanking_sequences) then "-f" else ""} \
      ~{if (supress_coverage_information) then "-C" else ""} \
      ~{if defined(header_prefix) then ("--header-prefix " +  '"' + header_prefix + '"') else ""} \
      ~{if (split_group) then "--split-group" else ""}
  >>>
  parameter_meta {
    output_file_directory: "output file directory  [default: .]"
    give_custom_prefix: "Give a custom prefix to each of the outputed files [default: ]"
    comma_separated_list: "A comma separated list of group IDs that you would like to extract data from.\\nNote that only the group number is needed, do not use prefixes like 'Group' or 'G', which\\nare sometimes used in file names or in a .crispr file"
    extract_spacers_listed: "[FILE] --spacer[=FILE]         Extract the spacers of the listed group.  By default\\nprints to stdout however an output file can also be given as an optional arguement"
    extract_direct_repeats: "[FILE] --direct-repeat[=FILE]  Extract the direct repeats of the listed group. By default\\nprints to stdout however an output file can also be given as an optional arguement"
    extract_flanking_sequences: "[FILE] --flanker[=FILE]        Extract the flanking sequences of the listed group. By default\\nprints to stdout however an output file can also be given as an optional arguement"
    supress_coverage_information: "Supress coverage information when printing spacers"
    header_prefix: "Print a prefix to each of the headers [default: ]"
    split_group: "Split the results into different files for each group.  File names\\nspecified with -s -d -f will not be used in this mode but instead\\noutput files will take the form of PREFIX_GROUP_[type].fa\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_directory = "${in_output_file_directory}"
    File out_extract_spacers_listed = "${in_extract_spacers_listed}"
    File out_extract_direct_repeats = "${in_extract_direct_repeats}"
    File out_extract_flanking_sequences = "${in_extract_flanking_sequences}"
    File out_split_group = "${in_split_group}"
  }
}