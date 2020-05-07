version 1.0

task PyatacSizes {
  input {
    String bamBam
    String bedBed
    String outOut
    Boolean notNotAtac
    Int lowerLower
    Int upperUpper
    Boolean noNoPlot
  }
  command <<<
    pyatac sizes \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--not_atac" false="" notNotAtac} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{true="--no_plot" false="" noNoPlot}
  >>>
}