version 1.0

task SortBed {
  input {
    String tmpdirTmpdir
    String uniqueUnique
    String duplicatesDuplicates
  }
  command <<<
    sort-bed \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(uniqueUnique) then ("--unique " +  '"' + uniqueUnique + '"') else ""} \
      ~{if defined(duplicatesDuplicates) then ("--duplicates " +  '"' + duplicatesDuplicates + '"') else ""}
  >>>
}