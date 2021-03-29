version 1.0

task SCALOP {
  input {
    String? numbering_scheme
    String? cdr_definition
    String? assign
    Directory? output_directory_default
    String? output_ext
    Int? db_version
    String? structure
    Directory? loop_db
    String? hc
    String? lc
    Boolean? update
    Directory? db_dir
    String? struc_cut_off
    String? b_factor_cut_off
    String? armadillo_include
    String? sab_dab_script
    String? sabdabpydir
    String? s_abd_abu
    String scalo_p
    Int wing_ki_wong
  }
  command <<<
    SCALOP \
      ~{scalo_p} \
      ~{wing_ki_wong} \
      ~{if defined(numbering_scheme) then ("--numbering_scheme " +  '"' + numbering_scheme + '"') else ""} \
      ~{if defined(cdr_definition) then ("--cdr_definition " +  '"' + cdr_definition + '"') else ""} \
      ~{if defined(assign) then ("--assign " +  '"' + assign + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(output_ext) then ("--output_ext " +  '"' + output_ext + '"') else ""} \
      ~{if defined(db_version) then ("--db_version " +  '"' + db_version + '"') else ""} \
      ~{if defined(structure) then ("--structure " +  '"' + structure + '"') else ""} \
      ~{if defined(loop_db) then ("--loopdb " +  '"' + loop_db + '"') else ""} \
      ~{if defined(hc) then ("--hc " +  '"' + hc + '"') else ""} \
      ~{if defined(lc) then ("--lc " +  '"' + lc + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(db_dir) then ("--dbdir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(struc_cut_off) then ("--struc_cutoff " +  '"' + struc_cut_off + '"') else ""} \
      ~{if defined(b_factor_cut_off) then ("--bfactor_cutoff " +  '"' + b_factor_cut_off + '"') else ""} \
      ~{if defined(armadillo_include) then ("--armadillo_include " +  '"' + armadillo_include + '"') else ""} \
      ~{if defined(sab_dab_script) then ("--sabdabscript " +  '"' + sab_dab_script + '"') else ""} \
      ~{if defined(sabdabpydir) then ("--sabdabpydir " +  '"' + sabdabpydir + '"') else ""} \
      ~{if defined(s_abd_abu) then ("--sabdabu " +  '"' + s_abd_abu + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scalop:2021.01.27--py_0"
  }
  parameter_meta {
    numbering_scheme: "Antibody chain numbering scheme"
    cdr_definition: "CDR region definition"
    assign: "Input sequence(s)"
    output_directory_default: "Output directory (default = console output)"
    output_ext: "Output format"
    db_version: "Database version in YYYY-MM (e.g. '2017-07') or YYYY\\nfor data included by the end of the year"
    structure: "Input framework structure"
    loop_db: "Loop structures directory"
    hc: "Heavy Chain ID"
    lc: "Light Chain ID"
    update: "Perform an update to a copy of the database that you\\nhave write permissions for"
    db_dir: "[for updater] Loop database directory"
    struc_cut_off: "[for updater] Resolution of structures to be clustered"
    b_factor_cut_off: "[for updater] Maximum B factor of backbone atoms in\\nthe loop"
    armadillo_include: "[for updater] Resolution of structures to be clustered"
    sab_dab_script: "[for updater] Location of SAbDab bin script (e.g.\\n~/bin/)"
    sabdabpydir: "[for updater] Location of ABDB python module (e.g.\\n~/bin/Python/ABDB)"
    s_abd_abu: "[for updater] Whether or not to update SAbDab\\n([yes]/no)"
    scalo_p: "Sequence-based antibody Canonical LOoP structure annotation"
    wing_ki_wong: "Wing Ki Wong"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}