version 1.0

task TrimLowAbund.py {
  input {
    Boolean ignoreIgnorePairs
    String tempdirTempdir
    Boolean gzipGzip
    Boolean bzipBzip
    Boolean digiDigiNorm
    String digiDigiNormCoverage
    Boolean singleSinglePass
  }
  command <<<
    trim-low-abund.py \
      ~{true="--ignore-pairs" false="" ignoreIgnorePairs} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip} \
      ~{true="--diginorm" false="" digiDigiNorm} \
      ~{if defined(digiDigiNormCoverage) then ("--diginorm-coverage " +  '"' + digiDigiNormCoverage + '"') else ""} \
      ~{true="--single-pass" false="" singleSinglePass}
  >>>
}