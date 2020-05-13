version 1.0

task StructureHarvester.py {
  input {
    String dirDir
    String outOut
    Boolean evanEvanNo
    Boolean clumpClumpP
  }
  command <<<
    structureHarvester.py \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--evanno" false="" evanEvanNo} \
      ~{true="--clumpp" false="" clumpClumpP}
  >>>
}