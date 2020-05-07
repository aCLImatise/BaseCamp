version 1.0

task Beast {
  input {
    String verboseVerbose
    String warningsWarnings
    String strictStrict
    String windowWindow
    String optionsOptions
    String workingWorking
    String seedSeed
    String prefixPrefix
    String overwriteOverwrite
    String errorsErrors
    String threadsThreads
    String javaJava
    String testsTests
    String thresholdThreshold
    String adaptationAdaptationOff
    String adaptationAdaptationTarget
    String beagleBeagle
    String beagleBeagleAuto
    String beagleBeagleInfo
    String beagleBeagleOrder
    String beagleBeagleInstances
    String beagleBeagleMultiPartition
    String beagleBeagleCpu
    String beagleBeagleGpu
    String beagleBeagleSse
    String beagleBeagleSseOff
    String beagleBeagleThreadingOff
    String beagleBeagleThreadCount
    String beagleBeagleCuda
    String beagleBeagleOpenCl
    String beagleBeagleSingle
    String beagleBeagleDouble
    String beagleBeagleAsync
    String beagleBeagleScaling
    String beagleBeagleDelayScalingOff
    String beagleBeagleRescale
    String mpiMpi
    String particlesParticles
    String mc3Mc3Chains
    String mc3Mc3Delta
    String mc3Mc3Temperatures
    String mc3Mc3Swap
    String loadLoadState
    String saveSaveStem
    String saveSaveAt
    String saveSaveEvery
    String saveSaveState
    String forceForceResume
    String citationsCitationsFile
    String versionVersion
  }
  command <<<
    beast \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(warningsWarnings) then ("-warnings " +  '"' + warningsWarnings + '"') else ""} \
      ~{if defined(strictStrict) then ("-strict " +  '"' + strictStrict + '"') else ""} \
      ~{if defined(windowWindow) then ("-window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(optionsOptions) then ("-options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(workingWorking) then ("-working " +  '"' + workingWorking + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(overwriteOverwrite) then ("-overwrite " +  '"' + overwriteOverwrite + '"') else ""} \
      ~{if defined(errorsErrors) then ("-errors " +  '"' + errorsErrors + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(javaJava) then ("-java " +  '"' + javaJava + '"') else ""} \
      ~{if defined(testsTests) then ("-tests " +  '"' + testsTests + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("-threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(adaptationAdaptationOff) then ("-adaptation_off " +  '"' + adaptationAdaptationOff + '"') else ""} \
      ~{if defined(adaptationAdaptationTarget) then ("-adaptation_target " +  '"' + adaptationAdaptationTarget + '"') else ""} \
      ~{if defined(beagleBeagle) then ("-beagle " +  '"' + beagleBeagle + '"') else ""} \
      ~{if defined(beagleBeagleAuto) then ("-beagle_auto " +  '"' + beagleBeagleAuto + '"') else ""} \
      ~{if defined(beagleBeagleInfo) then ("-beagle_info " +  '"' + beagleBeagleInfo + '"') else ""} \
      ~{if defined(beagleBeagleOrder) then ("-beagle_order " +  '"' + beagleBeagleOrder + '"') else ""} \
      ~{if defined(beagleBeagleInstances) then ("-beagle_instances " +  '"' + beagleBeagleInstances + '"') else ""} \
      ~{if defined(beagleBeagleMultiPartition) then ("-beagle_multipartition " +  '"' + beagleBeagleMultiPartition + '"') else ""} \
      ~{if defined(beagleBeagleCpu) then ("-beagle_CPU " +  '"' + beagleBeagleCpu + '"') else ""} \
      ~{if defined(beagleBeagleGpu) then ("-beagle_GPU " +  '"' + beagleBeagleGpu + '"') else ""} \
      ~{if defined(beagleBeagleSse) then ("-beagle_SSE " +  '"' + beagleBeagleSse + '"') else ""} \
      ~{if defined(beagleBeagleSseOff) then ("-beagle_SSE_off " +  '"' + beagleBeagleSseOff + '"') else ""} \
      ~{if defined(beagleBeagleThreadingOff) then ("-beagle_threading_off " +  '"' + beagleBeagleThreadingOff + '"') else ""} \
      ~{if defined(beagleBeagleThreadCount) then ("-beagle_thread_count " +  '"' + beagleBeagleThreadCount + '"') else ""} \
      ~{if defined(beagleBeagleCuda) then ("-beagle_cuda " +  '"' + beagleBeagleCuda + '"') else ""} \
      ~{if defined(beagleBeagleOpenCl) then ("-beagle_opencl " +  '"' + beagleBeagleOpenCl + '"') else ""} \
      ~{if defined(beagleBeagleSingle) then ("-beagle_single " +  '"' + beagleBeagleSingle + '"') else ""} \
      ~{if defined(beagleBeagleDouble) then ("-beagle_double " +  '"' + beagleBeagleDouble + '"') else ""} \
      ~{if defined(beagleBeagleAsync) then ("-beagle_async " +  '"' + beagleBeagleAsync + '"') else ""} \
      ~{if defined(beagleBeagleScaling) then ("-beagle_scaling " +  '"' + beagleBeagleScaling + '"') else ""} \
      ~{if defined(beagleBeagleDelayScalingOff) then ("-beagle_delay_scaling_off " +  '"' + beagleBeagleDelayScalingOff + '"') else ""} \
      ~{if defined(beagleBeagleRescale) then ("-beagle_rescale " +  '"' + beagleBeagleRescale + '"') else ""} \
      ~{if defined(mpiMpi) then ("-mpi " +  '"' + mpiMpi + '"') else ""} \
      ~{if defined(particlesParticles) then ("-particles " +  '"' + particlesParticles + '"') else ""} \
      ~{if defined(mc3Mc3Chains) then ("-mc3_chains " +  '"' + mc3Mc3Chains + '"') else ""} \
      ~{if defined(mc3Mc3Delta) then ("-mc3_delta " +  '"' + mc3Mc3Delta + '"') else ""} \
      ~{if defined(mc3Mc3Temperatures) then ("-mc3_temperatures " +  '"' + mc3Mc3Temperatures + '"') else ""} \
      ~{if defined(mc3Mc3Swap) then ("-mc3_swap " +  '"' + mc3Mc3Swap + '"') else ""} \
      ~{if defined(loadLoadState) then ("-load_state " +  '"' + loadLoadState + '"') else ""} \
      ~{if defined(saveSaveStem) then ("-save_stem " +  '"' + saveSaveStem + '"') else ""} \
      ~{if defined(saveSaveAt) then ("-save_at " +  '"' + saveSaveAt + '"') else ""} \
      ~{if defined(saveSaveEvery) then ("-save_every " +  '"' + saveSaveEvery + '"') else ""} \
      ~{if defined(saveSaveState) then ("-save_state " +  '"' + saveSaveState + '"') else ""} \
      ~{if defined(forceForceResume) then ("-force_resume " +  '"' + forceForceResume + '"') else ""} \
      ~{if defined(citationsCitationsFile) then ("-citations_file " +  '"' + citationsCitationsFile + '"') else ""} \
      ~{if defined(versionVersion) then ("-version " +  '"' + versionVersion + '"') else ""}
  >>>
}