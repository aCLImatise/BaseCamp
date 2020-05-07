version 1.0

task Skewer {
  input {
    String xX
    String yY
    String matrixMatrix
    String jJ
    String modeMode
    Boolean barcodeBarcode
    String rR
    String dD
    Int kK
    Int cutCut
    Boolean cut3Cut3
    Boolean endEndQuality
    Int meanMeanQuality
    Int minMin
    Int maxMax
    Boolean nN
    Boolean uU
    String fillFillNs
    Boolean qQIiMe
    Boolean quietQuiet
    Boolean maskedMaskedOutput
    String excludedExcludedOutput
    Boolean intelligentIntelligent
    Int threadsThreads
  }
  command <<<
    skewer \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--barcode" false="" barcodeBarcode} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(cutCut) then ("--cut " +  '"' + cutCut + '"') else ""} \
      ~{true="--cut3" false="" cut3Cut3} \
      ~{true="--end-quality" false="" endEndQuality} \
      ~{if defined(meanMeanQuality) then ("--mean-quality " +  '"' + meanMeanQuality + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-u" false="" uU} \
      ~{if defined(fillFillNs) then ("--fillNs " +  '"' + fillFillNs + '"') else ""} \
      ~{true="--qiime" false="" qQIiMe} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--masked-output" false="" maskedMaskedOutput} \
      ~{if defined(excludedExcludedOutput) then ("--excluded-output " +  '"' + excludedExcludedOutput + '"') else ""} \
      ~{true="--intelligent" false="" intelligentIntelligent} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}