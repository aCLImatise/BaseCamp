version 1.0

task Art454 {
  input {
    String? perform_singleend_simulation
    String? perform_pairedend_simulation
    String? use_cigar_alignment
    File? output_aln_alignment_file
    File? output_sam_alignment_file
    String? warning_messages_debugging
    String? simulate_reads_profile
    String? fixed_random_seed
    Int? number_flow_cycles
    File? users_own_read
  }
  command <<<
    art_454 \
      ~{if defined(perform_singleend_simulation) then ("-A " +  '"' + perform_singleend_simulation + '"') else ""} \
      ~{if defined(perform_pairedend_simulation) then ("-B " +  '"' + perform_pairedend_simulation + '"') else ""} \
      ~{if defined(use_cigar_alignment) then ("-M " +  '"' + use_cigar_alignment + '"') else ""} \
      ~{if defined(output_aln_alignment_file) then ("-a " +  '"' + output_aln_alignment_file + '"') else ""} \
      ~{if defined(output_sam_alignment_file) then ("-s " +  '"' + output_sam_alignment_file + '"') else ""} \
      ~{if defined(warning_messages_debugging) then ("-d " +  '"' + warning_messages_debugging + '"') else ""} \
      ~{if defined(simulate_reads_profile) then ("-t " +  '"' + simulate_reads_profile + '"') else ""} \
      ~{if defined(fixed_random_seed) then ("-r " +  '"' + fixed_random_seed + '"') else ""} \
      ~{if defined(number_flow_cycles) then ("-c " +  '"' + number_flow_cycles + '"') else ""} \
      ~{if defined(users_own_read) then ("-p " +  '"' + users_own_read + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    perform_singleend_simulation: "to perform single-end amplicon sequencing simulation"
    perform_pairedend_simulation: "to perform paired-end amplicon sequencing simulation"
    use_cigar_alignment: "to use CIGAR 'M' instead of '=/X' for alignment match/mismatch"
    output_aln_alignment_file: "to output the ALN alignment file"
    output_sam_alignment_file: "to output the SAM alignment file"
    warning_messages_debugging: "out warning messages for debugging"
    simulate_reads_profile: "to simulate reads from the built-in GS FLX Titanium profile [default: GS FLX profile]"
    fixed_random_seed: "a fixed random seed for the simulation (to generate two identical datasets from two different runs)"
    number_flow_cycles: "the number of flow cycles by the sequencer [ default: 100 for GS-FLX, and 200 for GS-FLX Titanium ]"
    users_own_read: "user's own read profile for simulation\\nNOTE: the name of a read profile is the directory containing read profile data files.\\nplease read the REAME file about the format of 454 read profile data files and.\\nand the default filenames of these data files."
  }
  output {
    File out_stdout = stdout()
    File out_output_aln_alignment_file = "${in_output_aln_alignment_file}"
    File out_output_sam_alignment_file = "${in_output_sam_alignment_file}"
  }
}