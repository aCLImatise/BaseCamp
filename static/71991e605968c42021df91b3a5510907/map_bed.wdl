version 1.0

task MapBed.py {
  input {
    Boolean singleSingleNucleotide
    String wigWigDir
    String? bedBedPath
    String? outOutPath
    String? uUMapDir
    String? kmKmEr
  }
  command <<<
    map_bed.py \
      ~{bedBedPath} \
      ~{true="-SingleNucleotide" false="" singleSingleNucleotide} \
      ~{if defined(wigWigDir) then ("-wigdir " +  '"' + wigWigDir + '"') else ""} \
      ~{outOutPath} \
      ~{uUMapDir} \
      ~{kmKmEr}
  >>>
}