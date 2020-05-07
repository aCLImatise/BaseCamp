version 1.0

task SegtoolsPreprocess {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean annotationAnnotation
    String? optionsOptions
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    segtools-preprocess \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--annotation" false="" annotationAnnotation} \
      ~{inInFile} \
      ~{outfileOutfile}
  >>>
}