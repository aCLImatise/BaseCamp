version 1.0

task JeMarkdupes {
  input {
    String? markMarkDuplicatesWithMolecularCode
  }
  command <<<
    je markdupes \
      ~{markMarkDuplicatesWithMolecularCode}
  >>>
}