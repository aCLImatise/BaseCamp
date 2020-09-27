version 1.0

task AgatSpFixFeaturesLocationsDuplicatedpl {
  input {
    File? file
    File? outfile
    String agat_sp_fix_features_locations_duplicated_do_tpl
  }
  command <<<
    agat_sp_fix_features_locations_duplicated_pl \
      ~{agat_sp_fix_features_locations_duplicated_do_tpl} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    file: "Input GTF/GFF file."
    outfile: "Output file. If none given, will be display in standard output."
    agat_sp_fix_features_locations_duplicated_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}