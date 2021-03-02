version 1.0

task RePCR {
  input {
    File? var_0
    File? var_1
    File? var_2
    File? var_3
    Int? set_max_allowed_mismatches
    Int? set_max_allowed_indels
    Int? set_variability_sts
    Boolean? use_presize_alignments
    Boolean? print_alignments_comments
    Int? set_default_sts
    Boolean? enabledisable_reverse_sts
    Boolean? enabledisable_syscall_optimisation
    Int? set_number_stses
    File? set_output_file
    Boolean? quiet_progress_indicator
    Boolean? lq
    Boolean? hv
    String? primer
  }
  command <<<
    re_PCR \
      ~{primer} \
      ~{if defined(var_0) then ("-p " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-P " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-s " +  '"' + var_2 + '"') else ""} \
      ~{if defined(var_3) then ("-S " +  '"' + var_3 + '"') else ""} \
      ~{if defined(set_max_allowed_mismatches) then ("-n " +  '"' + set_max_allowed_mismatches + '"') else ""} \
      ~{if defined(set_max_allowed_indels) then ("-g " +  '"' + set_max_allowed_indels + '"') else ""} \
      ~{if defined(set_variability_sts) then ("-m " +  '"' + set_variability_sts + '"') else ""} \
      ~{if (use_presize_alignments) then "-l" else ""} \
      ~{if (print_alignments_comments) then "-G" else ""} \
      ~{if defined(set_default_sts) then ("-d " +  '"' + set_default_sts + '"') else ""} \
      ~{if (enabledisable_reverse_sts) then "-r" else ""} \
      ~{if (enabledisable_syscall_optimisation) then "-O" else ""} \
      ~{if defined(set_number_stses) then ("-C " +  '"' + set_number_stses + '"') else ""} \
      ~{if defined(set_output_file) then ("-o " +  '"' + set_output_file + '"') else ""} \
      ~{if (quiet_progress_indicator) then "-q" else ""} \
      ~{if (lq) then "-lq" else ""} \
      ~{if (hv) then "-hV" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: "Perform primer lookup using hash-file"
    var_1: "Perform primer lookup using hash-file"
    var_2: "Perform STS lookup using hash-file"
    var_3: "Perform STS lookup using hash-file"
    set_max_allowed_mismatches: "Set max allowed mismatches per primer for lookup"
    set_max_allowed_indels: "Set max allowed indels per primer for lookup"
    set_variability_sts: "Set variability for STS size for lookup"
    use_presize_alignments: "Use presize alignments (only if gaps>0)"
    print_alignments_comments: "Print alignments in comments"
    set_default_sts: "Set default STS size"
    enabledisable_reverse_sts: "+|-          Enable/disable reverse STS lookup"
    enabledisable_syscall_optimisation: "+|-          Enable/disable syscall optimisation"
    set_number_stses: "Set number of STSes per batch"
    set_output_file: "Set output file name"
    quiet_progress_indicator: "Quiet (no progress indicator)"
    lq: ""
    hv: ""
    primer: ""
  }
  output {
    File out_stdout = stdout()
    File out_set_output_file = "${in_set_output_file}"
  }
}