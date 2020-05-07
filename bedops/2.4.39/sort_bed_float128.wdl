version 1.0

task SortBedFloat128 {
  input {
    String tmpdirTmpdir
    String uniqueUnique
    String duplicatesDuplicates
  }
  command <<<
    sort-bed-float128 \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(uniqueUnique) then ("--unique " +  '"' + uniqueUnique + '"') else ""} \
      ~{if defined(duplicatesDuplicates) then ("--duplicates " +  '"' + duplicatesDuplicates + '"') else ""}
  >>>
}