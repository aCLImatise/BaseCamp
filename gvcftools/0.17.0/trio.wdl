version 1.0

task Trio {
  input {
    String refRef
    String regionRegion
    String excludeExclude
    String motherMother
    String fatherFather
    String childChild
    String conflictConflictFile
    String sameSameHetFile
    String heHeThetHomFile
    Boolean noNoVariableMetadata
    Boolean murdockMurdock
    String minMinGqX
    String minMinPosRankSum
    String minMinQd
    String minMinInfoField
    String maxMaxInfoField
  }
  command <<<
    trio \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(motherMother) then ("--mother " +  '"' + motherMother + '"') else ""} \
      ~{if defined(fatherFather) then ("--father " +  '"' + fatherFather + '"') else ""} \
      ~{if defined(childChild) then ("--child " +  '"' + childChild + '"') else ""} \
      ~{if defined(conflictConflictFile) then ("--conflict-file " +  '"' + conflictConflictFile + '"') else ""} \
      ~{if defined(sameSameHetFile) then ("--same-het-file " +  '"' + sameSameHetFile + '"') else ""} \
      ~{if defined(heHeThetHomFile) then ("--hethet-hom-file " +  '"' + heHeThetHomFile + '"') else ""} \
      ~{true="--no-variable-metadata" false="" noNoVariableMetadata} \
      ~{true="--murdock" false="" murdockMurdock} \
      ~{if defined(minMinGqX) then ("--min-gqx " +  '"' + minMinGqX + '"') else ""} \
      ~{if defined(minMinPosRankSum) then ("--min-pos-rank-sum " +  '"' + minMinPosRankSum + '"') else ""} \
      ~{if defined(minMinQd) then ("--min-qd " +  '"' + minMinQd + '"') else ""} \
      ~{if defined(minMinInfoField) then ("--min-info-field " +  '"' + minMinInfoField + '"') else ""} \
      ~{if defined(maxMaxInfoField) then ("--max-info-field " +  '"' + maxMaxInfoField + '"') else ""}
  >>>
}