version 1.0

task NullarborReport.pl {
  input {
    Boolean nameName
    Boolean inInDir
    Boolean outdirOutdir
    Boolean previewPreview
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    nullarbor-report.pl \
      ~{true="--name" false="" nameName} \
      ~{true="--indir" false="" inInDir} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--preview" false="" previewPreview} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}