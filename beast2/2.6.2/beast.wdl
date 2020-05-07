version 1.0

task Beast {
  input {
    String windowWindow
    String optionsOptions
    String workingWorking
    String seedSeed
    String prefixPrefix
    String stateStateFile
    String overwriteOverwrite
    String resumeResume
    String validateValidate
    String errorsErrors
    String threadsThreads
    String javaJava
    String noerrNoerr
    String loglevelLoglevel
    String instancesInstances
    String beagleBeagle
    String beagleBeagleInfo
    String beagleBeagleOrder
    String beagleBeagleCpu
    String beagleBeagleGpu
    String beagleBeagleSse
    String beagleBeagleSingle
    String beagleBeagleDouble
    String beagleBeagleScaling
    String versionVersion
    String strictStrictVersions
    String dD
    String sampleSampleFromPrior
  }
  command <<<
    beast \
      ~{if defined(windowWindow) then ("-window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(optionsOptions) then ("-options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(workingWorking) then ("-working " +  '"' + workingWorking + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(stateStateFile) then ("-statefile " +  '"' + stateStateFile + '"') else ""} \
      ~{if defined(overwriteOverwrite) then ("-overwrite " +  '"' + overwriteOverwrite + '"') else ""} \
      ~{if defined(resumeResume) then ("-resume " +  '"' + resumeResume + '"') else ""} \
      ~{if defined(validateValidate) then ("-validate " +  '"' + validateValidate + '"') else ""} \
      ~{if defined(errorsErrors) then ("-errors " +  '"' + errorsErrors + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(javaJava) then ("-java " +  '"' + javaJava + '"') else ""} \
      ~{if defined(noerrNoerr) then ("-noerr " +  '"' + noerrNoerr + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("-loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(instancesInstances) then ("-instances " +  '"' + instancesInstances + '"') else ""} \
      ~{if defined(beagleBeagle) then ("-beagle " +  '"' + beagleBeagle + '"') else ""} \
      ~{if defined(beagleBeagleInfo) then ("-beagle_info " +  '"' + beagleBeagleInfo + '"') else ""} \
      ~{if defined(beagleBeagleOrder) then ("-beagle_order " +  '"' + beagleBeagleOrder + '"') else ""} \
      ~{if defined(beagleBeagleCpu) then ("-beagle_CPU " +  '"' + beagleBeagleCpu + '"') else ""} \
      ~{if defined(beagleBeagleGpu) then ("-beagle_GPU " +  '"' + beagleBeagleGpu + '"') else ""} \
      ~{if defined(beagleBeagleSse) then ("-beagle_SSE " +  '"' + beagleBeagleSse + '"') else ""} \
      ~{if defined(beagleBeagleSingle) then ("-beagle_single " +  '"' + beagleBeagleSingle + '"') else ""} \
      ~{if defined(beagleBeagleDouble) then ("-beagle_double " +  '"' + beagleBeagleDouble + '"') else ""} \
      ~{if defined(beagleBeagleScaling) then ("-beagle_scaling " +  '"' + beagleBeagleScaling + '"') else ""} \
      ~{if defined(versionVersion) then ("-version " +  '"' + versionVersion + '"') else ""} \
      ~{if defined(strictStrictVersions) then ("-strictversions " +  '"' + strictStrictVersions + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(sampleSampleFromPrior) then ("-sampleFromPrior " +  '"' + sampleSampleFromPrior + '"') else ""}
  >>>
}