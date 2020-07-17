version 1.0

task UniqueFilter {
  input {
    Boolean? instead_finding_regions
    String? i
  }
  command <<<
    uniqueFilter \
      ~{true="-s" false="" instead_finding_regions} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    instead_finding_regions: "instead of finding regions to remove by looking for duplicatd regions in inputFile, load them from subtractFile."
    i: ""
  }
}