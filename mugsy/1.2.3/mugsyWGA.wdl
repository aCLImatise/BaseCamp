version 1.0

task MugsyWGA {
  input {
    Boolean vV
    Boolean sS
    Boolean alAl
    Boolean oO
    Boolean distanceDistance
    Boolean minlengthMinlength
    Boolean uniqueUnique
    Boolean duplicationsDuplications
    Boolean fF
    Boolean anchorAnchorWin
    Boolean allowAllowNestedLCbs
    Boolean refineRefine
    Boolean segmentationSegmentation
    Boolean blockBlockFile
    Boolean gG
    Boolean eE
    Boolean maMa
    Boolean msMs
    Boolean mmMm
    Boolean bB
    Boolean iI
  }
  command <<<
    mugsyWGA \
      ~{true="-V" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-al" false="" alAl} \
      ~{true="-o" false="" oO} \
      ~{true="-distance" false="" distanceDistance} \
      ~{true="-minlength" false="" minlengthMinlength} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{true="-duplications" false="" duplicationsDuplications} \
      ~{true="-f" false="" fF} \
      ~{true="-anchorwin" false="" anchorAnchorWin} \
      ~{true="--allownestedlcbs" false="" allowAllowNestedLCbs} \
      ~{true="-refine" false="" refineRefine} \
      ~{true="-segmentation" false="" segmentationSegmentation} \
      ~{true="-blockfile" false="" blockBlockFile} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-ma" false="" maMa} \
      ~{true="-ms" false="" msMs} \
      ~{true="-mm" false="" mmMm} \
      ~{true="-b" false="" bB} \
      ~{true="-i" false="" iI}
  >>>
}