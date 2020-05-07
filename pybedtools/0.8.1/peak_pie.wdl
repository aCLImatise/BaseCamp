version 1.0

task PeakPie.py {
  input {
    String bedBed
    String gffGff
    String outOut
    Boolean strandedStranded
    Boolean includeInclude
    Boolean excludeExclude
    String threshThresh
    Boolean testTest
  }
  command <<<
    peak_pie.py \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{true="--include" false="" includeInclude} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{if defined(threshThresh) then ("--thresh " +  '"' + threshThresh + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}