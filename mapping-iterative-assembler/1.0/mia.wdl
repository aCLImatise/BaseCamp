version 1.0

task Mia {
  input {
    String? var_0
    File? supplied_default_matrix
    File? root_file_name
    String? database_repeat_alignment
    String? database_repeat_sum
    Boolean? tolerance_collapse_sequences
    Int? adapter_presence_coordinate
    String? database_adapters_trim
    String? var_8
    Int? k
    Boolean? filename_use_ignoring
    Boolean? consensus_calling_default
    String? referenceassembly_is_circular
    String? assembly_convergence_default
    String? iterate_assembly_convergence
    Boolean? only_output_assembly
    String? d
    String? special_discount_homopolymer
    String? var_18
    Boolean? dynamic_score_cutoff
    Int? var_20
    Int? var_21
    String? r
  }
  command <<<
    mia \
      ~{if defined(var_0) then ("-f " +  '"' + var_0 + '"') else ""} \
      ~{if defined(supplied_default_matrix) then ("-s " +  '"' + supplied_default_matrix + '"') else ""} \
      ~{if (root_file_name) then "-m" else ""} \
      ~{if defined(database_repeat_alignment) then ("-u " +  '"' + database_repeat_alignment + '"') else ""} \
      ~{if defined(database_repeat_sum) then ("-U " +  '"' + database_repeat_sum + '"') else ""} \
      ~{if (tolerance_collapse_sequences) then "-C" else ""} \
      ~{if defined(adapter_presence_coordinate) then ("-A " +  '"' + adapter_presence_coordinate + '"') else ""} \
      ~{if defined(database_adapters_trim) then ("-T " +  '"' + database_adapters_trim + '"') else ""} \
      ~{if defined(var_8) then ("-a " +  '"' + var_8 + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (filename_use_ignoring) then "-I" else ""} \
      ~{if (consensus_calling_default) then "-p" else ""} \
      ~{if defined(referenceassembly_is_circular) then ("-c " +  '"' + referenceassembly_is_circular + '"') else ""} \
      ~{if defined(assembly_convergence_default) then ("-i " +  '"' + assembly_convergence_default + '"') else ""} \
      ~{if defined(iterate_assembly_convergence) then ("-n " +  '"' + iterate_assembly_convergence + '"') else ""} \
      ~{if (only_output_assembly) then "-F" else ""} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""} \
      ~{if defined(special_discount_homopolymer) then ("-h " +  '"' + special_discount_homopolymer + '"') else ""} \
      ~{if defined(var_18) then ("-M " +  '"' + var_18 + '"') else ""} \
      ~{if (dynamic_score_cutoff) then "-H" else ""} \
      ~{if defined(var_20) then ("-S " +  '"' + var_20 + '"') else ""} \
      ~{if defined(var_21) then ("-N " +  '"' + var_21 + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    supplied_default_matrix: "(if not supplied an default matrix is used)"
    root_file_name: "<root file name for maln output file(s)> (assembly.maln.iter)"
    database_repeat_alignment: "database has repeat sequences, keep one based on alignment score"
    database_repeat_sum: "database has repeat sequences, keep one based on sum of q-scores"
    tolerance_collapse_sequences: "<tolerance> collapse sequences with same start, end, strand info into a single sequence\\nAllow <tolerance> bases difference for start and end coordinates\\nImportant: keep NO SPACE between parameter and value: e.g. -C3"
    adapter_presence_coordinate: "adapter presence and coordinate information to more aggressively\\nremove repeat sequences - suitable only for 454 sequences that have not\\nalready been adapter trimmed"
    database_adapters_trim: "database has adapters, trim these"
    var_8: ""
    k: ""
    filename_use_ignoring: "<filename of list of sequence IDs to use, ignoring all others>"
    consensus_calling_default: "<consensus calling code; default = 1>"
    referenceassembly_is_circular: "reference/assembly is circular"
    assembly_convergence_default: "assembly until convergence (default)"
    iterate_assembly_convergence: "not iterate assembly until convergence"
    only_output_assembly: "<only output the FINAL assembly, not each iteration>"
    d: ""
    special_discount_homopolymer: "special discount for homopolymer gaps"
    var_18: ""
    dynamic_score_cutoff: "<do not do dynamic score cutoff, instead use this Hard score cutoff>"
    var_20: ""
    var_21: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
    File out_root_file_name = "${in_root_file_name}"
  }
}