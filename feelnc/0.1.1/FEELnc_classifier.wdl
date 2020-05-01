version 1.0

task FEELncClassifier.pl {
  input {
    Boolean biotypeBiotype
    File logLog
    Boolean manMan
    Boolean verbosityVerbosity
    File lLNcrna
    File mrnaMrna
    Boolean windowWindow
    Boolean maxMaxWindow
  }
  command <<<
    FEELnc_classifier.pl \
      ~{true="--biotype" false="" biotypeBiotype} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--man" false="" manMan} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(lLNcrna) then ("--lncrna " +  '"' + lLNcrna + '"') else ""} \
      ~{if defined(mrnaMrna) then ("--mrna " +  '"' + mrnaMrna + '"') else ""} \
      ~{true="--window" false="" windowWindow} \
      ~{true="--maxwindow" false="" maxMaxWindow}
  >>>
}