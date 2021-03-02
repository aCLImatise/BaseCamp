version 1.0

task FeatureFinderMetaboIdent {
  input {
    File? in
    File? id
    File? out
    File? lib_out
    File? chrom_out
    File? candidates_out
    File? traf_o_out
    Boolean? detect
    Boolean? model
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureFinderMetaboIdent \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(lib_out) then ("-lib_out " +  '"' + lib_out + '"') else ""} \
      ~{if defined(chrom_out) then ("-chrom_out " +  '"' + chrom_out + '"') else ""} \
      ~{if defined(candidates_out) then ("-candidates_out " +  '"' + candidates_out + '"') else ""} \
      ~{if defined(traf_o_out) then ("-trafo_out " +  '"' + traf_o_out + '"') else ""} \
      ~{if (detect) then "-detect" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                   Input file: LC-MS raw data (valid formats: 'mzML')"
    id: "*                   Input file: Metabolite identifications (valid formats: 'tsv')"
    out: "*                  Output file: Features (valid formats: 'featureXML')"
    lib_out: "Output file: Assay library (valid formats: 'traML')"
    chrom_out: "Output file: Chromatograms (valid formats: 'mzML')"
    candidates_out: "Output file: Feature candidates (before filtering and model fitting) (valid formats: 'featureXML')"
    traf_o_out: "Output file: Retention times (expected vs. observed) (valid formats: 'trafoXML')"
    detect: ":peak_width <value>    Expected elution peak width in seconds, for smoothing (Gauss filter). Also determines the RT extration window, unless set explicitly via 'extract:rt_window'. (default: '5.0' min: '0.0')"
    model: ":type <choice>          Type of elution model to fit to features (default: 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_lib_out = "${in_lib_out}"
    File out_chrom_out = "${in_chrom_out}"
    File out_candidates_out = "${in_candidates_out}"
    File out_traf_o_out = "${in_traf_o_out}"
  }
}