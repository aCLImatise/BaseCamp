version 1.0

task SamSort {
  input {
    String dirDir
    String dbDb
    String splitSplitOutput
    Boolean appendAppendOutput
    String sort2Sort2
    Boolean markMarkDups
    Boolean markMarkFirst
    Boolean dupsDupsOnly
    Boolean uniqUniqOnly
    Boolean restoreRestoreOrigOrder
    Boolean multipleMultiplePrimaries
    Boolean noNoSamHeaders
    String? optionsOptions
    String? samSamFile
  }
  command <<<
    sam_sort \
      ~{optionsOptions} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(splitSplitOutput) then ("--split-output " +  '"' + splitSplitOutput + '"') else ""} \
      ~{true="--append-output" false="" appendAppendOutput} \
      ~{if defined(sort2Sort2) then ("--sort2 " +  '"' + sort2Sort2 + '"') else ""} \
      ~{true="--mark-dups" false="" markMarkDups} \
      ~{true="--mark-first" false="" markMarkFirst} \
      ~{true="--dups-only" false="" dupsDupsOnly} \
      ~{true="--uniq-only" false="" uniqUniqOnly} \
      ~{true="--restore-orig-order" false="" restoreRestoreOrigOrder} \
      ~{true="--multiple-primaries" false="" multipleMultiplePrimaries} \
      ~{true="--no-sam-headers" false="" noNoSamHeaders} \
      ~{samSamFile}
  >>>
}