version 1.0

task Impute2chromopainter.pl {
  input {
    String? perlPerl
    String? impute2chromopainterplImpute2chromopainterpl
    String? imputeImputeOutputFileHaps
    String? outputOutputFilenamePrefix
  }
  command <<<
    impute2chromopainter.pl \
      ~{perlPerl} \
      ~{impute2chromopainterplImpute2chromopainterpl} \
      ~{imputeImputeOutputFileHaps} \
      ~{outputOutputFilenamePrefix}
  >>>
}