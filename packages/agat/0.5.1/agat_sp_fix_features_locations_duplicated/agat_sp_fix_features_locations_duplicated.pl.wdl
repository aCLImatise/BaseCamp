version 1.0

task AgatSpFixFeaturesLocationsDuplicatedpl {
  input {
    File? input_gtfgff_file
    File? outfile
    String agat_sp_fix_features_locations_duplicated_do_tpl
  }
  command <<<
    agat_sp_fix_features_locations_duplicated_pl \
      ~{agat_sp_fix_features_locations_duplicated_do_tpl} \
      ~{if defined(input_gtfgff_file) then ("--file " +  '"' + input_gtfgff_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    input_gtfgff_file: "Input GTF/GFF file."
    outfile: "Output file. If none given, will be display in standard output."
    agat_sp_fix_features_locations_duplicated_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}