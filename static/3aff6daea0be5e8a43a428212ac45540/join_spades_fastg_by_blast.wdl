version 1.0

task JoinSpadesFastgByBlast.py {
  input {
    String gG
    String fF
    Boolean keepKeepTemp
    String btBt
    Int maxMaxGap
    Boolean conConAll
    String depthDepth
    String whichWhichBlast
    String? pythonPython
    String? joinJoinSpadesFastGByBlastpY
  }
  command <<<
    join_spades_fastg_by_blast.py \
      ~{pythonPython} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{if defined(btBt) then ("--bt " +  '"' + btBt + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max-gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{true="--con-all" false="" conConAll} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(whichWhichBlast) then ("--which-blast " +  '"' + whichWhichBlast + '"') else ""} \
      ~{joinJoinSpadesFastGByBlastpY}
  >>>
}