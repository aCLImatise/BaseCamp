version 1.0

task CreateGermlinespy {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Array[String] list_folders_andor
    String? specify_types_include
    Boolean? cloned
    String? sf
    String? vf
    String? df
    String? jf
    String? cf
    String germ_pass
    String germ_fail
    String clone_id
  }
  command <<<
    CreateGermlines_py \
      ~{germ_pass} \
      ~{germ_fail} \
      ~{clone_id} \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(list_folders_andor) then ("-r " +  '"' + list_folders_andor + '"') else ""} \
      ~{if defined(specify_types_include) then ("-g " +  '"' + specify_types_include + '"') else ""} \
      ~{if (cloned) then "--cloned" else ""} \
      ~{if defined(sf) then ("--sf " +  '"' + sf + '"') else ""} \
      ~{if defined(vf) then ("--vf " +  '"' + vf + '"') else ""} \
      ~{if defined(df) then ("--df " +  '"' + df + '"') else ""} \
      ~{if defined(jf) then ("--jf " +  '"' + jf + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    list_folders_andor: "List of folders and/or fasta files (with .fasta, .fna\\nor .fa extension) with germline sequences. When using\\nthe default Change-O sequence and coordinate fields,\\nthese reference sequences must contain IMGT-numbering\\nspacers (gaps) in the V segment. Alternative numbering\\nschemes, or no numbering, may work for alternative\\nsequence and coordinate definitions that define a\\nvalid alignment, but a warning will be issued.\\n(default: None)"
    specify_types_include: "[{full,dmask,vonly,regions} ...]\\nSpecify type(s) of germlines to include full germline,\\ngermline with D segment masked, or germline for V\\nsegment only. (default: ['dmask'])"
    cloned: "Specify to create only one germline per clone. Note,\\nif allele calls are ambiguous within a clonal group,\\nthis will place the germline call used for the entire\\nclone within the germline_v_call, germline_d_call and\\ngermline_j_call fields. (default: False)"
    sf: "Field containing the aligned sequence. Defaults to\\nsequence_alignment (airr) or SEQUENCE_IMGT (changeo).\\n(default: None)"
    vf: "Field containing the germline V segment call. Defaults\\nto v_call (airr) or V_CALL (changeo). (default: None)"
    df: "Field containing the germline D segment call. Defaults\\nto d_call (airr) or D_CALL (changeo). (default: None)"
    jf: "Field containing the germline J segment call. Defaults\\nto j_call (airr) or J_CALL (changeo). (default: None)"
    cf: "Field containing clone identifiers. Ignored if"
    germ_pass: "database with assigned germline sequences."
    germ_fail: "database with records failing germline assignment."
    clone_id: "output fields:"
  }
  output {
    File out_stdout = stdout()
  }
}