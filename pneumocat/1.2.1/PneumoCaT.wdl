version 1.0

task PneumoCaT.py {
  input {
    String inputInputDirectory
    String fastFastQ1
    String fastFastQ2
    String variantVariantDatabase
    String outputOutputDir
    String threadsThreads
    String bowtieBowtie
    String samSamTools
    Boolean cleanupCleanup
  }
  command <<<
    PneumoCaT.py \
      ~{if defined(inputInputDirectory) then ("--input_directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(fastFastQ1) then ("--fastq_1 " +  '"' + fastFastQ1 + '"') else ""} \
      ~{if defined(fastFastQ2) then ("--fastq_2 " +  '"' + fastFastQ2 + '"') else ""} \
      ~{if defined(variantVariantDatabase) then ("--variant_database " +  '"' + variantVariantDatabase + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(bowtieBowtie) then ("--bowtie " +  '"' + bowtieBowtie + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{true="--cleanup" false="" cleanupCleanup}
  >>>
}