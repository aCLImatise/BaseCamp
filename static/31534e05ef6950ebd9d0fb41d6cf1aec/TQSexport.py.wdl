version 1.0

task TQSexportpy {
  input {
    File? export
    Int? phred
    Int? consec
    Boolean? verbose
  }
  command <<<
    TQSexport_py \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(phred) then ("--Phred " +  '"' + phred + '"') else ""} \
      ~{if defined(consec) then ("--consec " +  '"' + consec + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    export: "=EXPORTFILE\\nIllumina export file - Output format from the Genome\\nAnalyzer"
    phred: "threshold=THRESHOLD\\nBase intensity threshold value (Phred quality scores 0\\nto 40, default=10)"
    consec: "Minimum number of consecutive bases passing threshold\\nvalues (default=20)"
    verbose: "Runs in Verbose mode."
  }
  output {
    File out_stdout = stdout()
    File out_export = "${in_export}"
  }
}