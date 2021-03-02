version 1.0

task BeamspyAnnotatecompounds {
  input {
    String? peak_list
    String? intensity_matrix
    String? db
    String? db_compounds
    String? db_name
    String? adducts_library
    String? ion_mode
    String? ppm
    Boolean? skip_patterns
    String? rt
  }
  command <<<
    beamspy annotate_compounds \
      ~{if defined(peak_list) then ("--peaklist " +  '"' + peak_list + '"') else ""} \
      ~{if defined(intensity_matrix) then ("--intensity-matrix " +  '"' + intensity_matrix + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_compounds) then ("--db-compounds " +  '"' + db_compounds + '"') else ""} \
      ~{if defined(db_name) then ("--db-name " +  '"' + db_name + '"') else ""} \
      ~{if defined(adducts_library) then ("--adducts-library " +  '"' + adducts_library + '"') else ""} \
      ~{if defined(ion_mode) then ("--ion-mode " +  '"' + ion_mode + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if (skip_patterns) then "--skip-patterns" else ""} \
      ~{if defined(rt) then ("--rt " +  '"' + rt + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beamspy:1.1.0--py_0"
  }
  parameter_meta {
    peak_list: "Tab-delimited peaklist."
    intensity_matrix: "Tab-delimited intensity matrix."
    db: "Sqlite database to write results."
    db_compounds: "Metabolite database (reference)."
    db_name: "Name compound / metabolite database (within --db-\\ncompounds)."
    adducts_library: "List of adducts to search for."
    ion_mode: "Ion mode of the libraries."
    ppm: "Mass tolerance in parts per million."
    skip_patterns: "Skip applying/using peak patterns (e.g. adduct and\\nisotope patterns) to filter annotations."
    rt: "Retention time tolerance in seconds."
  }
  output {
    File out_stdout = stdout()
  }
}