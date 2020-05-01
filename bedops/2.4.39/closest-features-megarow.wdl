version 1.0

task ClosestFeaturesMegarow {
  input {
    String chromChrom
    Boolean closestClosest
    String delimDelim
    Boolean distDist
    Boolean ecEc
    Boolean headerHeader
    Boolean noNoOverlaps
    Boolean noNoRef
  }
  command <<<
    closest-features-megarow \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="--closest" false="" closestClosest} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{true="--dist" false="" distDist} \
      ~{true="--ec" false="" ecEc} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--no-overlaps" false="" noNoOverlaps} \
      ~{true="--no-ref" false="" noNoRef}
  >>>
}