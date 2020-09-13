version 1.0

task PipitsReformatAssignedTaxonomy {
  input {
    String? in
    File? out
    String? minimum_confidence_record
    String re_format
    String taxonomy
    String assignment
    String var_output
    String from
    String rdp_classifier_dot
  }
  command <<<
    pipits_reformatAssignedTaxonomy \
      ~{re_format} \
      ~{taxonomy} \
      ~{assignment} \
      ~{var_output} \
      ~{from} \
      ~{rdp_classifier_dot} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(minimum_confidence_record) then ("-c " +  '"' + minimum_confidence_record + '"') else ""}
  >>>
  parameter_meta {
    in: "[REQUIRED] taxonomy assignment output from RDP-CLASSIFIER"
    out: "[REQUIRED] reformatted taxonomy assignment file"
    minimum_confidence_record: "[REQUIRED] Minimum confidence to record an assignment"
    re_format: ""
    taxonomy: ""
    assignment: ""
    var_output: ""
    from: ""
    rdp_classifier_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}