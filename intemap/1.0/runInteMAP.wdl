version 1.0

task RunInteMAP.py {
  input {
    String outfileOutfile
    String threadThreadNum
    Boolean qQ
    Int minMinHighCovLength
    String kKForAbyss
    Int minMinKForIDba
    String highHighCovIDba
    String lowLowCovIDba
    String highHighCovAbyss
    Boolean clearanceClearance
    String? sequenceSequencePositionFile
    String? libLibInfoFile
  }
  command <<<
    runInteMAP.py \
      ~{sequenceSequencePositionFile} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(threadThreadNum) then ("--thread_num " +  '"' + threadThreadNum + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(minMinHighCovLength) then ("--minHighCovLength " +  '"' + minMinHighCovLength + '"') else ""} \
      ~{if defined(kKForAbyss) then ("--k_for_abyss " +  '"' + kKForAbyss + '"') else ""} \
      ~{if defined(minMinKForIDba) then ("--min_k_for_idba " +  '"' + minMinKForIDba + '"') else ""} \
      ~{if defined(highHighCovIDba) then ("--high_cov_idba " +  '"' + highHighCovIDba + '"') else ""} \
      ~{if defined(lowLowCovIDba) then ("--low_cov_idba " +  '"' + lowLowCovIDba + '"') else ""} \
      ~{if defined(highHighCovAbyss) then ("--high_cov_abyss " +  '"' + highHighCovAbyss + '"') else ""} \
      ~{true="--clearance" false="" clearanceClearance} \
      ~{libLibInfoFile}
  >>>
}