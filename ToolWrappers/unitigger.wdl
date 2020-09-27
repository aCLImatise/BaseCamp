version 1.0

task Unitigger {
  input {
    Int? specifies_target_number
    Directory? fragment_store_name
    File? chimeras_file
    Directory? read_ovl_store
    File? input_overlapfragmesgs_asmofg
    File? spurs_file
    Boolean? find_bubble_smoothing
    Int? limit_path_length
    Boolean? count_chimera_fragments
    Int? enabledisable_fragment_overlap
    Int? overlaps_error_rate
    Int? unique_unitig_cutoff
    Boolean? recalibrate_global_rate
    Int? specify_length_genome
    String? m
    String? n
    String? output_to_prefix
    Boolean? disable_early_spur
    File? create_ovl_dump
    Int? work_limit_candidate
    Int? dovetail_outgoing_degree
    Int? ignore_nonblessed_overlap
    Int? containment_outgoing_degree
    String option
  }
  command <<<
    unitigger \
      ~{option} \
      ~{if defined(specifies_target_number) then ("-B " +  '"' + specifies_target_number + '"') else ""} \
      ~{if defined(fragment_store_name) then ("-F " +  '"' + fragment_store_name + '"') else ""} \
      ~{if defined(chimeras_file) then ("-H " +  '"' + chimeras_file + '"') else ""} \
      ~{if defined(read_ovl_store) then ("-I " +  '"' + read_ovl_store + '"') else ""} \
      ~{if defined(input_overlapfragmesgs_asmofg) then ("-L " +  '"' + input_overlapfragmesgs_asmofg + '"') else ""} \
      ~{if defined(spurs_file) then ("-S " +  '"' + spurs_file + '"') else ""} \
      ~{if defined(find_bubble_smoothing) then ("-U " +  '"' + find_bubble_smoothing + '"') else ""} \
      ~{if defined(limit_path_length) then ("-W " +  '"' + limit_path_length + '"') else ""} \
      ~{if defined(count_chimera_fragments) then ("-Y " +  '"' + count_chimera_fragments + '"') else ""} \
      ~{if defined(enabledisable_fragment_overlap) then ("-d " +  '"' + enabledisable_fragment_overlap + '"') else ""} \
      ~{if defined(overlaps_error_rate) then ("-e " +  '"' + overlaps_error_rate + '"') else ""} \
      ~{if defined(unique_unitig_cutoff) then ("-j " +  '"' + unique_unitig_cutoff + '"') else ""} \
      ~{if (recalibrate_global_rate) then "-k" else ""} \
      ~{if defined(specify_length_genome) then ("-l " +  '"' + specify_length_genome + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(output_to_prefix) then ("-o " +  '"' + output_to_prefix + '"') else ""} \
      ~{if (disable_early_spur) then "-s" else ""} \
      ~{if defined(create_ovl_dump) then ("-u " +  '"' + create_ovl_dump + '"') else ""} \
      ~{if defined(work_limit_candidate) then ("-w " +  '"' + work_limit_candidate + '"') else ""} \
      ~{if defined(dovetail_outgoing_degree) then ("-x " +  '"' + dovetail_outgoing_degree + '"') else ""} \
      ~{if defined(ignore_nonblessed_overlap) then ("-y " +  '"' + ignore_nonblessed_overlap + '"') else ""} \
      ~{if defined(containment_outgoing_degree) then ("-z " +  '"' + containment_outgoing_degree + '"') else ""}
  >>>
  parameter_meta {
    specifies_target_number: "Specifies the target number of fragments per partition."
    fragment_store_name: "The fragment store name."
    chimeras_file: "chimeras file."
    read_ovl_store: "Read the OVL store."
    input_overlapfragmesgs_asmofg: "The input OverlapFragMesgs; asm.ofg."
    spurs_file: "Spurs file."
    find_bubble_smoothing: "Find bubble smoothing overlaps."
    limit_path_length: "Limit in path length for graph walking."
    count_chimera_fragments: "Do not count chimera fragments."
    enabledisable_fragment_overlap: "Enable/Disable de-chording of the fragment overlap graph."
    overlaps_error_rate: "Overlaps with error rate about this are ignored on input.\\nAn integer value is in parts per thousand."
    unique_unitig_cutoff: "Unique unitig cut-off"
    recalibrate_global_rate: "Recalibrate the global arrival rate to be the max unique local arrival rate"
    specify_length_genome: "Specify length of the genome."
    m: "Pre-allocate memory"
    n: "Pre-allocate memory"
    output_to_prefix: "output to this prefix."
    disable_early_spur: "Disable early spur fragment removal."
    create_ovl_dump: "Create a OVL compatible dump of the graph."
    work_limit_candidate: "The work limit per candidate edge for de-chording."
    dovetail_outgoing_degree: "Dovetail outgoing degree threshold per fragment-end."
    ignore_nonblessed_overlap: "Ignore non-blessed overlap edges to blessed fragment ends."
    containment_outgoing_degree: "Containment outgoing degree threshold per fragment-end."
    option: ""
  }
  output {
    File out_stdout = stdout()
  }
}