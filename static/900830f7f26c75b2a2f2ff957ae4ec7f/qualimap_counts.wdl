version 1.0

task QualimapCounts {
  input {
    Boolean? compare
    File? data
    Int? info
    Int? threshold
    Directory? outdir
    File? outfile
    String? out_format
    File? r_script_path
    File? species
  }
  command <<<
    qualimap counts \
      ~{if (compare) then "--compare" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(r_script_path) then ("--rscriptpath " +  '"' + r_script_path + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compare: "Perform comparison of conditions. Currently 2 maximum\\nis possible."
    data: "File describing the input data. Format of the file is\\na 4-column tab-delimited table.\\nColumn 1: sample name\\nColumn 2: condition of the sample\\nColumn 3: path to the counts data for the sample\\nColumn 4: index of the column with counts"
    info: "Path to info file containing genes GC-content, length\\nand type."
    threshold: "Threshold for the number of counts"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is\\nreport.pdf)."
    out_format: "Format of the output report (PDF, HTML or both\\nPDF:HTML, default is HTML)."
    r_script_path: "Path to Rscript executable (by default it is assumed\\nto be available from system $PATH)"
    species: "Use built-in info file for the given species: HUMAN or\\nMOUSE.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}