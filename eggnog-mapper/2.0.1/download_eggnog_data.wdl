version 1.0

task DownloadEggnogData.py {
  input {
    Boolean dD
    Boolean yY
    Boolean fF
    Boolean sS
    Boolean qQ
    Boolean dataDataDir
  }
  command <<<
    download_eggnog_data.py \
      ~{true="-D" false="" dD} \
      ~{true="-y" false="" yY} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-q" false="" qQ} \
      ~{true="--data_dir" false="" dataDataDir}
  >>>
}