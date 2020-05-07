version 1.0

task PTModel {
  input {
    File inInPositive
    File inInNegative
    File outOut
    Float cC
    String svmSvmType
    Float nuNu
    String kernelKernelType
    Int degreeDegree
    Int borderBorderLength
    Int kKMerLength
    Float sigmaSigma
    Int maxMaxPositiveCount
    Int maxMaxNegativeCount
    Boolean redundantRedundant
    Boolean additiveAdditiveCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PTModel \
      ~{if defined(inInPositive) then ("-in_positive " +  '"' + inInPositive + '"') else ""} \
      ~{if defined(inInNegative) then ("-in_negative " +  '"' + inInNegative + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(svmSvmType) then ("-svm_type " +  '"' + svmSvmType + '"') else ""} \
      ~{if defined(nuNu) then ("-nu " +  '"' + nuNu + '"') else ""} \
      ~{if defined(kernelKernelType) then ("-kernel_type " +  '"' + kernelKernelType + '"') else ""} \
      ~{if defined(degreeDegree) then ("-degree " +  '"' + degreeDegree + '"') else ""} \
      ~{if defined(borderBorderLength) then ("-border_length " +  '"' + borderBorderLength + '"') else ""} \
      ~{if defined(kKMerLength) then ("-k_mer_length " +  '"' + kKMerLength + '"') else ""} \
      ~{if defined(sigmaSigma) then ("-sigma " +  '"' + sigmaSigma + '"') else ""} \
      ~{if defined(maxMaxPositiveCount) then ("-max_positive_count " +  '"' + maxMaxPositiveCount + '"') else ""} \
      ~{if defined(maxMaxNegativeCount) then ("-max_negative_count " +  '"' + maxMaxNegativeCount + '"') else ""} \
      ~{true="-redundant" false="" redundantRedundant} \
      ~{true="-additive_cv" false="" additiveAdditiveCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}