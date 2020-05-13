version 1.0

task WrapperPhageContigsSorterIPlant.pl {
  input {
    Boolean fnaFna
    Boolean datasetDataset
    Boolean cpCp
    Boolean dbDb
    Boolean wdirWdir
    Boolean nNCpu
    Boolean viViRome
    Boolean dataDataDir
    Boolean diamondDiamond
    Boolean keepKeepDb
    Boolean noNoC
  }
  command <<<
    wrapper_phage_contigs_sorter_iPlant.pl \
      ~{true="--fna" false="" fnaFna} \
      ~{true="--dataset" false="" datasetDataset} \
      ~{true="--cp" false="" cpCp} \
      ~{true="--db" false="" dbDb} \
      ~{true="--wdir" false="" wdirWdir} \
      ~{true="--ncpu" false="" nNCpu} \
      ~{true="--virome" false="" viViRome} \
      ~{true="--data-dir" false="" dataDataDir} \
      ~{true="--diamond" false="" diamondDiamond} \
      ~{true="--keep-db" false="" keepKeepDb} \
      ~{true="--no_c" false="" noNoC}
  >>>
}