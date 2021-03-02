version 1.0

task BeamspyAnnotatepeakpatterns {
  input {
    String? peak_list
    String? intensity_matrix
    File? gml_file
    String? db
    Boolean? adducts
    String? adducts_library
    Boolean? isotopes
    String? isotopes_library
    Boolean? oligomers
    Boolean? neutral_losses
    String? neutral_losses_library
    String? ion_mode
    String? ppm
    Int? max_monomer_units
  }
  command <<<
    beamspy annotate_peak_patterns \
      ~{if defined(peak_list) then ("--peaklist " +  '"' + peak_list + '"') else ""} \
      ~{if defined(intensity_matrix) then ("--intensity-matrix " +  '"' + intensity_matrix + '"') else ""} \
      ~{if defined(gml_file) then ("--gml-file " +  '"' + gml_file + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (adducts) then "--adducts" else ""} \
      ~{if defined(adducts_library) then ("--adducts-library " +  '"' + adducts_library + '"') else ""} \
      ~{if (isotopes) then "--isotopes" else ""} \
      ~{if defined(isotopes_library) then ("--isotopes-library " +  '"' + isotopes_library + '"') else ""} \
      ~{if (oligomers) then "--oligomers" else ""} \
      ~{if (neutral_losses) then "--neutral-losses" else ""} \
      ~{if defined(neutral_losses_library) then ("--neutral-losses-library " +  '"' + neutral_losses_library + '"') else ""} \
      ~{if defined(ion_mode) then ("--ion-mode " +  '"' + ion_mode + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if defined(max_monomer_units) then ("--max-monomer-units " +  '"' + max_monomer_units + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beamspy:1.1.0--py_0"
  }
  parameter_meta {
    peak_list: "Tab-delimited peaklist."
    intensity_matrix: "Tab-delimited intensity matrix."
    gml_file: "Correlation graph in GraphML format."
    db: "Sqlite database to write results."
    adducts: "Annotate adducts."
    adducts_library: "List of adducts."
    isotopes: "Annotate isotopes."
    isotopes_library: "List of isotopes."
    oligomers: "Annotate oligomers."
    neutral_losses: "Annotate neutral losses."
    neutral_losses_library: "List of neutral losses."
    ion_mode: "Ion mode of the libraries."
    ppm: "Mass tolerance in parts per million."
    max_monomer_units: "Maximum number of monomer units.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}