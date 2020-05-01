version 1.0

task KneaddataBowtie2DiscordantPairs {
  input {
    String xX
    String unUnPair
    String alAlPair
    String unUnSingle
    String alAlSingle
    String uU
    String sS
    String bowtie2Bowtie2
    String threadsThreads
    String bowtie2Bowtie2Options
    Boolean catCatPairs
    Boolean reorderReorder
  }
  command <<<
    kneaddata_bowtie2_discordant_pairs \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(unUnPair) then ("--un-pair " +  '"' + unUnPair + '"') else ""} \
      ~{if defined(alAlPair) then ("--al-pair " +  '"' + alAlPair + '"') else ""} \
      ~{if defined(unUnSingle) then ("--un-single " +  '"' + unUnSingle + '"') else ""} \
      ~{if defined(alAlSingle) then ("--al-single " +  '"' + alAlSingle + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Options) then ("--bowtie2-options " +  '"' + bowtie2Bowtie2Options + '"') else ""} \
      ~{true="--cat-pairs" false="" catCatPairs} \
      ~{true="--reorder" false="" reorderReorder}
  >>>
}