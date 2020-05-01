version 1.0

task Twins {
  input {
    String refRef
    String regionRegion
    String excludeExclude
    String twin1Twin1
    String twin2Twin2
    String conflictConflictFile
    Boolean noNoVariableMetadata
    Boolean murdockMurdock
    String minMinGqX
    String minMinPosRankSum
    String minMinQd
    String minMinInfoField
    String maxMaxInfoField
  }
  command <<<
    twins \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(twin1Twin1) then ("--twin1 " +  '"' + twin1Twin1 + '"') else ""} \
      ~{if defined(twin2Twin2) then ("--twin2 " +  '"' + twin2Twin2 + '"') else ""} \
      ~{if defined(conflictConflictFile) then ("--conflict-file " +  '"' + conflictConflictFile + '"') else ""} \
      ~{true="--no-variable-metadata" false="" noNoVariableMetadata} \
      ~{true="--murdock" false="" murdockMurdock} \
      ~{if defined(minMinGqX) then ("--min-gqx " +  '"' + minMinGqX + '"') else ""} \
      ~{if defined(minMinPosRankSum) then ("--min-pos-rank-sum " +  '"' + minMinPosRankSum + '"') else ""} \
      ~{if defined(minMinQd) then ("--min-qd " +  '"' + minMinQd + '"') else ""} \
      ~{if defined(minMinInfoField) then ("--min-info-field " +  '"' + minMinInfoField + '"') else ""} \
      ~{if defined(maxMaxInfoField) then ("--max-info-field " +  '"' + maxMaxInfoField + '"') else ""}
  >>>
}