version 1.0

task ConusTrain {
  input {
    Boolean optionsOptions
    String? nusNus
    String? unaUna
    String? runRun
    String? ivoIvo
    String? bjkBjk
    String? yrYrN
    String? uUYn
    String? ry3Ry3
    String? bk2Bk2
  }
  command <<<
    conus_train \
      ~{nusNus} \
      ~{true="-options" false="" optionsOptions} \
      ~{unaUna} \
      ~{runRun} \
      ~{ivoIvo} \
      ~{bjkBjk} \
      ~{yrYrN} \
      ~{uUYn} \
      ~{ry3Ry3} \
      ~{bk2Bk2}
  >>>
}