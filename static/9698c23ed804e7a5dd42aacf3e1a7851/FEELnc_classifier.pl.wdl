version 1.0

task FEELncClassifierpl {
  input {
    Boolean? biotype
    File? log
    Boolean? man
    Boolean? verbosity
    File? l_ncrna
    File? mrna
    Int? window
    Int? max_window
  }
  command <<<
    FEELnc_classifier_pl \
      ~{if (biotype) then "--biotype" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(l_ncrna) then ("--lncrna " +  '"' + l_ncrna + '"') else ""} \
      ~{if defined(mrna) then ("--mrna " +  '"' + mrna + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(max_window) then ("--maxwindow " +  '"' + max_window + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  parameter_meta {
    biotype: "Print the biotype of each transcripts in the output"
    log: "Specify the name for the log file"
    man: "Open man page"
    verbosity: "Level of verbosity"
    l_ncrna: "Specify the lncRNA GTF file"
    mrna: "Specify the annotation GTF file (file of protein coding annotation)"
    window: "Size of the window during the expansion process [default 10000 e.g. 10kb]"
    max_window: "Size of the window around the lncRNA to compute interactions/classification [default e.g. 100kb]"
  }
  output {
    File out_stdout = stdout()
  }
}