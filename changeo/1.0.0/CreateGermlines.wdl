version 1.0

task CreateGermlines.py {
  input {
    Array[String] list_tab_delimited
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    String? format
    Boolean? cloned
    String? sf
    String? vf
    String? df
    String? jf
    String? cf
    String germ_pass
    String germ_fail
  }
  command <<<
    CreateGermlines.py \
      ~{germ_pass} \
      ~{germ_fail} \
      ~{if defined(list_tab_delimited) then ("-d " +  '"' + list_tab_delimited + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--cloned" false="" cloned} \
      ~{if defined(sf) then ("--sf " +  '"' + sf + '"') else ""} \
      ~{if defined(vf) then ("--vf " +  '"' + vf + '"') else ""} \
      ~{if defined(df) then ("--df " +  '"' + df + '"') else ""} \
      ~{if defined(jf) then ("--jf " +  '"' + jf + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""}
  >>>
  parameter_meta {
    list_tab_delimited: "A list of tab delimited database files. (default: None)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    cloned: "Specify to create only one germline per clone. Note, if allele calls are ambiguous within a clonal group, this will place the germline call used for the entire clone within the germline_v_call, germline_d_call and germline_j_call fields. (default: False)"
    sf: "Field containing the aligned sequence. Defaults to sequence_alignment (airr) or SEQUENCE_IMGT (changeo). (default: None)"
    vf: "Field containing the germline V segment call. Defaults to v_call (airr) or V_CALL (changeo). (default: None)"
    df: "Field containing the germline D segment call. Defaults to d_call (airr) or D_CALL (changeo). (default: None)"
    jf: "Field containing the germline J segment call. Defaults to j_call (airr) or J_CALL (changeo). (default: None)"
    cf: "Field containing clone identifiers. Ignored if --cloned is not also specified. Defaults to clone_id (airr) or CLONE (changeo). (default: None)"
    germ_pass: "database with assigned germline sequences."
    germ_fail: "database with records failing germline assignment."
  }
}