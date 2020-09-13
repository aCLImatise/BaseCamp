version 1.0

task WritedbEntry {
  input {
    Boolean? flatten_gene_y
    Boolean? flt
    Boolean? ignore_obsolete_features
    Boolean? space_separated_list_read
    Boolean? output_format_default
    Boolean? location_embl_qualifiermapping
    Boolean? gzip_output_default
    Boolean? embl_submission_format
    Boolean? pp
    Boolean? remove_product_qualifiers
    Boolean? url_using_default
    Boolean? ui_mode_run
    Boolean? password_connecting_chado
    Boolean? fp
    Boolean? np
  }
  command <<<
    writedb_entry \
      ~{if (flatten_gene_y) then "-f" else ""} \
      ~{if (flt) then "-flt" else ""} \
      ~{if (ignore_obsolete_features) then "-i" else ""} \
      ~{if (space_separated_list_read) then "-s" else ""} \
      ~{if (output_format_default) then "-o" else ""} \
      ~{if (location_embl_qualifiermapping) then "-l" else ""} \
      ~{if (gzip_output_default) then "-z" else ""} \
      ~{if (embl_submission_format) then "-a" else ""} \
      ~{if (pp) then "-pp" else ""} \
      ~{if (remove_product_qualifiers) then "-r" else ""} \
      ~{if (url_using_default) then "-c" else ""} \
      ~{if (ui_mode_run) then "-u" else ""} \
      ~{if (password_connecting_chado) then "-p" else ""} \
      ~{if (fp) then "-fp" else ""} \
      ~{if (np) then "-np" else ""}
  >>>
  parameter_meta {
    flatten_gene_y: "[y|n] flatten the gene model, default is y"
    flt: "space separated list of qualifiers to ignore (GFF only)"
    ignore_obsolete_features: "[y|n] ignore obsolete features, default is y"
    space_separated_list_read: "space separated list of sequences to read and write out"
    output_format_default: "[EMBL|GFF] output format, default is EMBL"
    location_embl_qualifiermapping: "location of EMBL mapping files (qualifier_mapping and key_mapping)"
    gzip_output_default: "[y|n] gzip output, default is y"
    embl_submission_format: "[y|n] for EMBL submission format change to n, default is y"
    pp: "[y|n] read polypeptide domain features, default is n"
    remove_product_qualifiers: "[y|n] remove product qualifiers from pseudogene (only for EMBL submission format), default is n"
    url_using_default: "the URL for your Chado database e.g. server_name:port/database_name?user (if not using default)"
    ui_mode_run: "[swing|console|script] the UI mode : run in swing (with popup dialog boxes) mode, run in console mode (choices entered in the console window), or in script mode (all choices default to continue, all parameters passed on command line)"
    password_connecting_chado: "the password for connecting to the Chado database"
    fp: "the file path (the folder you want to save the files in)"
    np: "[y|n] do not write out private qualifiers, default is y"
  }
  output {
    File out_stdout = stdout()
  }
}