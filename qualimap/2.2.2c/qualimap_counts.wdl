version 1.0

task QualimapCounts {
  input {
    Boolean? compare
    String? data
    String? info
    String? threshold
    String? outdir
    String? outfile
    String? out_format
    String? r_script_path
    String? species
  }
  command <<<
    qualimap counts \
      ~{true="--compare" false="" compare} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(r_script_path) then ("--rscriptpath " +  '"' + r_script_path + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    compare: "Perform comparison of conditions. Currently 2 maximum is possible."
    data: "File describing the input data. Format of the file is a 4-column tab-delimited table. Column 1: sample name Column 2: condition of the sample Column 3: path to the counts data for the sample Column 4: index of the column with counts"
    info: "Path to info file containing genes GC-content, length and type."
    threshold: "Threshold for the number of counts"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is report.pdf)."
    out_format: "Format of the output report (PDF, HTML or both PDF:HTML, default is HTML)."
    r_script_path: "Path to Rscript executable (by default it is assumed to be available from system $PATH)"
    species: "Use built-in info file for the given species: HUMAN or MOUSE."
  }
}