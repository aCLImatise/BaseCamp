version 1.0

task Dcmpsprt {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean cC
    Boolean pP
    Boolean sS
    Boolean portraitPortrait
    Boolean landscapeLandscape
    Boolean defaultDefaultOrientation
    Boolean trimTrim
    Boolean noNoTrim
    Boolean defaultDefaultTrim
    Boolean requestRequestDecimate
    Boolean requestRequestCrop
    Boolean requestRequestFail
    Boolean defaultDefaultRequest
    Boolean defaultDefaultPlut
    Boolean identityIdentity
    Boolean linLinOd
    Boolean plutPlut
    Boolean inverseInversePlut
    Boolean illuminationIllumination
    Boolean reflectionReflection
    Boolean copiesCopies
    Boolean mediumMediumType
    Boolean destinationDestination
    Boolean labelLabel
    Boolean priorityPriority
    Boolean ownerOwner
    Boolean plPl
    Boolean lL
    String? dcmDcmFileIn
  }
  command <<<
    dcmpsprt \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="--portrait" false="" portraitPortrait} \
      ~{true="--landscape" false="" landscapeLandscape} \
      ~{true="--default-orientation" false="" defaultDefaultOrientation} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--no-trim" false="" noNoTrim} \
      ~{true="--default-trim" false="" defaultDefaultTrim} \
      ~{true="--request-decimate" false="" requestRequestDecimate} \
      ~{true="--request-crop" false="" requestRequestCrop} \
      ~{true="--request-fail" false="" requestRequestFail} \
      ~{true="--default-request" false="" defaultDefaultRequest} \
      ~{true="--default-plut" false="" defaultDefaultPlut} \
      ~{true="--identity" false="" identityIdentity} \
      ~{true="--lin-od" false="" linLinOd} \
      ~{true="--plut" false="" plutPlut} \
      ~{true="--inverse-plut" false="" inverseInversePlut} \
      ~{true="--illumination" false="" illuminationIllumination} \
      ~{true="--reflection" false="" reflectionReflection} \
      ~{true="--copies" false="" copiesCopies} \
      ~{true="--medium-type" false="" mediumMediumType} \
      ~{true="--destination" false="" destinationDestination} \
      ~{true="--label" false="" labelLabel} \
      ~{true="--priority" false="" priorityPriority} \
      ~{true="--owner" false="" ownerOwner} \
      ~{true="-pl" false="" plPl} \
      ~{true="-l" false="" lL}
  >>>
}