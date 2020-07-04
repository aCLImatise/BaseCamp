version 1.0

task AgatSpFixFeaturesLocationsDuplicated.pl {
  input {
    String? file
    String? outfile
  }
  command <<<
    agat_sp_fix_features_locations_duplicated.pl \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    file: "Input GTF/GFF file."
    outfile: "Output file. If none given, will be display in standard output."
  }
}