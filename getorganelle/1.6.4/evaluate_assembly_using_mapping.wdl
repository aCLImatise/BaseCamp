version 1.0

task EvaluateAssemblyUsingMapping.py {
  input {
    String whichWhichBowtie2
    String bowtie2Bowtie2Mode
    String bowtie2Bowtie2Options
    String statStatMode
    Boolean debugDebug
  }
  command <<<
    evaluate_assembly_using_mapping.py \
      ~{if defined(whichWhichBowtie2) then ("--which-bowtie2 " +  '"' + whichWhichBowtie2 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Mode) then ("--bowtie2-mode " +  '"' + bowtie2Bowtie2Mode + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Options) then ("--bowtie2-options " +  '"' + bowtie2Bowtie2Options + '"') else ""} \
      ~{if defined(statStatMode) then ("--stat-mode " +  '"' + statStatMode + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}