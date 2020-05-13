version 1.0

task PyatacSignal {
  input {
    String bedBed
    String bgBg
    String sizesSizes
    String outOut
    Int coresCores
    Boolean allAll
    Boolean noNoAgg
    Int upUp
    Int downDown
    Int weightWeight
    Int strandStrand
    Boolean expExp
    Boolean positivePositive
    Boolean scaleScale
    Boolean normNorm
  }
  command <<<
    pyatac signal \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bgBg) then ("--bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--no_agg" false="" noNoAgg} \
      ~{if defined(upUp) then ("--up " +  '"' + upUp + '"') else ""} \
      ~{if defined(downDown) then ("--down " +  '"' + downDown + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{true="--exp" false="" expExp} \
      ~{true="--positive" false="" positivePositive} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--norm" false="" normNorm}
  >>>
}