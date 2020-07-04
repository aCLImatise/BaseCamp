version 1.0

task FEELncClassifier.pl {
  input {
    Boolean? biotype
    File? log
    Boolean? man
    Boolean? verbosity
    File? l_ncrna
    File? mrna
    String? window
    String? max_window
  }
  command <<<
    FEELnc_classifier.pl \
      ~{true="--biotype" false="" biotype} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--man" false="" man} \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(l_ncrna) then ("--lncrna " +  '"' + l_ncrna + '"') else ""} \
      ~{if defined(mrna) then ("--mrna " +  '"' + mrna + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(max_window) then ("--maxwindow " +  '"' + max_window + '"') else ""}
  >>>
  parameter_meta {
    biotype: "Print the biotype of each transcripts in the output"
    log: "Specify the name for the log file"
    man: "Open man page"
    verbosity: "Level of verbosity"
    l_ncrna: "Specify the lncRNA GTF file"
    mrna: "Specify the annotation GTF file (file of protein coding annotation)"
    window: "Size of the window around the lncRNA to compute interactions/classification [default 10000]"
    max_window: "Maximal size of the window during the expansion process [default 10000]"
  }
}