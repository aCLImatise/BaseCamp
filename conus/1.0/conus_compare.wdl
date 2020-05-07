version 1.0

task ConusCompare {
  input {
    Boolean hH
    Boolean flatFlat
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
    conus_compare \
      ~{nusNus} \
      ~{true="-H" false="" hH} \
      ~{true="--flat" false="" flatFlat} \
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