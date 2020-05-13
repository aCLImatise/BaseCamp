version 1.0

task RunMetasvAge.py {
  input {
    String referenceReference
    String assemblyAssembly
    String ageAge
    String workWork
    String padPad
    String nNThreads
    Array[String]+ chrsChrs
    Array[String]+ svSvTypes
    String timeoutTimeout
    Boolean keepKeepTemp
    String assemblyAssemblyTool
    Int minMinContigLen
    Int maxMaxRegionLen
    Int minMinDelSubAlignLen
    Int minMinInVSubAlignLen
    String ageAgeWindow
    Int intervalsIntervalsBed
  }
  command <<<
    run_metasv_age.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(ageAge) then ("--age " +  '"' + ageAge + '"') else ""} \
      ~{if defined(workWork) then ("--work " +  '"' + workWork + '"') else ""} \
      ~{if defined(padPad) then ("--pad " +  '"' + padPad + '"') else ""} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(chrsChrs) then ("--chrs " +  '"' + chrsChrs + '"') else ""} \
      ~{if defined(svSvTypes) then ("--sv_types " +  '"' + svSvTypes + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{true="--keep_temp" false="" keepKeepTemp} \
      ~{if defined(assemblyAssemblyTool) then ("--assembly_tool " +  '"' + assemblyAssemblyTool + '"') else ""} \
      ~{if defined(minMinContigLen) then ("--min_contig_len " +  '"' + minMinContigLen + '"') else ""} \
      ~{if defined(maxMaxRegionLen) then ("--max_region_len " +  '"' + maxMaxRegionLen + '"') else ""} \
      ~{if defined(minMinDelSubAlignLen) then ("--min_del_subalign_len " +  '"' + minMinDelSubAlignLen + '"') else ""} \
      ~{if defined(minMinInVSubAlignLen) then ("--min_inv_subalign_len " +  '"' + minMinInVSubAlignLen + '"') else ""} \
      ~{if defined(ageAgeWindow) then ("--age_window " +  '"' + ageAgeWindow + '"') else ""} \
      ~{if defined(intervalsIntervalsBed) then ("--intervals_bed " +  '"' + intervalsIntervalsBed + '"') else ""}
  >>>
}