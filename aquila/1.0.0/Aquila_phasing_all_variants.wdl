version 1.0

task AquilaPhasingAllVariants {
  input {
    String assemblyAssemblyVcf
    String vcfVcfFile
    String sampleSampleName
    String chrChrStart
    String chrChrEnd
    String outOutDir
    String assemblyAssemblyDir
    String blockBlockLenUse
  }
  command <<<
    Aquila_phasing_all_variants \
      ~{if defined(assemblyAssemblyVcf) then ("--assembly_vcf " +  '"' + assemblyAssemblyVcf + '"') else ""} \
      ~{if defined(vcfVcfFile) then ("--vcf_file " +  '"' + vcfVcfFile + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample_name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(assemblyAssemblyDir) then ("--assembly_dir " +  '"' + assemblyAssemblyDir + '"') else ""} \
      ~{if defined(blockBlockLenUse) then ("--block_len_use " +  '"' + blockBlockLenUse + '"') else ""}
  >>>
}