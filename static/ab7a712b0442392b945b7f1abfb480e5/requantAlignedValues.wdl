version 1.0

task RequantAlignedValues.py {
  input {
    Array[String]+ inIn
    String peakPeakGroupsInFile
    String outOut
    File fileFileFormat
    String outOutMatrix
    String matrixMatrixOutputMethod
    String borderBorderOption
    Boolean dryDryRun
    Boolean testTest
    Boolean cacheCacheInMemory
    String methodMethod
    String realignRealignRuns
    String verbosityVerbosity
    Boolean doDoSingleRun
    Boolean disableDisableIsotopicGrouping
    Boolean disableDisableIsotopicTransfer
  }
  command <<<
    requantAlignedValues.py \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(peakPeakGroupsInFile) then ("--peakgroups_infile " +  '"' + peakPeakGroupsInFile + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fileFileFormat) then ("--file_format " +  '"' + fileFileFormat + '"') else ""} \
      ~{if defined(outOutMatrix) then ("--out_matrix " +  '"' + outOutMatrix + '"') else ""} \
      ~{if defined(matrixMatrixOutputMethod) then ("--matrix_output_method " +  '"' + matrixMatrixOutputMethod + '"') else ""} \
      ~{if defined(borderBorderOption) then ("--border_option " +  '"' + borderBorderOption + '"') else ""} \
      ~{true="--dry_run" false="" dryDryRun} \
      ~{true="--test" false="" testTest} \
      ~{true="--cache_in_memory" false="" cacheCacheInMemory} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(realignRealignRuns) then ("--realign_runs " +  '"' + realignRealignRuns + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--do_single_run" false="" doDoSingleRun} \
      ~{true="--disable_isotopic_grouping" false="" disableDisableIsotopicGrouping} \
      ~{true="--disable_isotopic_transfer" false="" disableDisableIsotopicTransfer}
  >>>
}