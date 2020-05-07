version 1.0

task RTModel {
  input {
    File inIn
    File inInPositive
    File inInNegative
    File outOut
    File outOutOligoParams
    File outOutOligoTrainSet
    String svmSvmType
    Float nuNu
    Float pP
    Float cC
    String kernelKernelType
    Int degreeDegree
    Int borderBorderLength
    Float maxMaxStd
    Int kKMerLength
    Float sigmaSigma
    String totalTotalGradientTime
    Boolean firstFirstDimRt
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
    Boolean cvCv
    Boolean cvCv
    Boolean cvCv
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    RTModel \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInPositive) then ("-in_positive " +  '"' + inInPositive + '"') else ""} \
      ~{if defined(inInNegative) then ("-in_negative " +  '"' + inInNegative + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutOligoParams) then ("-out_oligo_params " +  '"' + outOutOligoParams + '"') else ""} \
      ~{if defined(outOutOligoTrainSet) then ("-out_oligo_trainset " +  '"' + outOutOligoTrainSet + '"') else ""} \
      ~{if defined(svmSvmType) then ("-svm_type " +  '"' + svmSvmType + '"') else ""} \
      ~{if defined(nuNu) then ("-nu " +  '"' + nuNu + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(kernelKernelType) then ("-kernel_type " +  '"' + kernelKernelType + '"') else ""} \
      ~{if defined(degreeDegree) then ("-degree " +  '"' + degreeDegree + '"') else ""} \
      ~{if defined(borderBorderLength) then ("-border_length " +  '"' + borderBorderLength + '"') else ""} \
      ~{if defined(maxMaxStd) then ("-max_std " +  '"' + maxMaxStd + '"') else ""} \
      ~{if defined(kKMerLength) then ("-k_mer_length " +  '"' + kKMerLength + '"') else ""} \
      ~{if defined(sigmaSigma) then ("-sigma " +  '"' + sigmaSigma + '"') else ""} \
      ~{if defined(totalTotalGradientTime) then ("-total_gradient_time " +  '"' + totalTotalGradientTime + '"') else ""} \
      ~{true="-first_dim_rt" false="" firstFirstDimRt} \
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
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{true="-cv" false="" cvCv} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}