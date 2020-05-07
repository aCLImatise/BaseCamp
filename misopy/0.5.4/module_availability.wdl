version 1.0

task ModuleAvailability {
  input {
    String samSamTools
    String bedBedTools
  }
  command <<<
    module_availability \
      ~{if defined(samSamTools) then ("- samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(bedBedTools) then ("- bedtools " +  '"' + bedBedTools + '"') else ""}
  >>>
}