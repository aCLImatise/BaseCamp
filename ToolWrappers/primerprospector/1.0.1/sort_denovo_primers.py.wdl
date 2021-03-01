version 1.0

task SortDenovoPrimerspy {
  input {
    Boolean? verbose
    Directory? output_dir
    Float? variable_pos_freq
    File? known_primers_file_path
    String? sort_method
    File? primer_name
    Int? match_len
    Int? truncate_len
    Int? amplicon_len
    File? hits_file
  }
  command <<<
    sort_denovo_primers_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(variable_pos_freq) then ("--variable_pos_freq " +  '"' + variable_pos_freq + '"') else ""} \
      ~{if defined(known_primers_file_path) then ("--known_primers_filepath " +  '"' + known_primers_file_path + '"') else ""} \
      ~{if defined(sort_method) then ("--sort_method " +  '"' + sort_method + '"') else ""} \
      ~{if defined(primer_name) then ("--primer_name " +  '"' + primer_name + '"') else ""} \
      ~{if defined(match_len) then ("--match_len " +  '"' + match_len + '"') else ""} \
      ~{if defined(truncate_len) then ("--truncate_len " +  '"' + truncate_len + '"') else ""} \
      ~{if defined(amplicon_len) then ("--amplicon_len " +  '"' + amplicon_len + '"') else ""} \
      ~{if defined(hits_file) then ("--hits_file " +  '"' + hits_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "Output directory"
    variable_pos_freq: "Percentage at which a variable base is considered for\\ndegenerate primer design. [default: 0.2]"
    known_primers_file_path: "Optional primers filepath to compare with the de novo\\nprimers.  Comparisons will be used to separate the de\\nnovo primers into unique, partially overlapping, or\\noverlapping primers with the known primers supplied.\\n[default: none]"
    sort_method: "Sorting method for reverse and forward primers output\\nfiles, pass either S, O, or P for [S]ensitivity,\\n[O]verall shannon entropy, s[P]ecificity.[default: S]"
    primer_name: "Root name for primers in the formatted_primers.txt\\noutput file. [default: ]"
    match_len: "Number of base pairs in overlapping sequences to be\\nconsidered as a significant overlap. [default: 10]"
    truncate_len: "Number of bases to truncate for the 3' end of the\\nprimer comparison to the universal primer set.\\n[default: 10]"
    amplicon_len: "Generate primer pair output file that will yield\\namplicons with an estimated size within the given\\nrange.  Requires that the standard alignment option\\n(-a) was used with generate_primers_denovo.py.  Pass\\nthe min and max amplicon size separated by a colon,\\nfor example -a 250:500 [default: False]"
    hits_file: "Conserved Xmers file, output file from\\ngenerate_primers_denovo.py module. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_primer_name = "${in_primer_name}"
    File out_hits_file = "${in_hits_file}"
  }
}