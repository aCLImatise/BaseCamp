version 1.0

task RtgPedstats {
  input {
    String? delimiter
    String? dot
    Boolean? families
    Boolean? female_ids
    Boolean? founder_ids
    Boolean? male_ids
    Boolean? maternal_ids
    Boolean? paternal_ids
    Boolean? primary_ids
    Boolean? simple_dot
    File file
  }
  command <<<
    rtg pedstats \
      ~{file} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""} \
      ~{if (families) then "--families" else ""} \
      ~{if (female_ids) then "--female-ids" else ""} \
      ~{if (founder_ids) then "--founder-ids" else ""} \
      ~{if (male_ids) then "--male-ids" else ""} \
      ~{if (maternal_ids) then "--maternal-ids" else ""} \
      ~{if (paternal_ids) then "--paternal-ids" else ""} \
      ~{if (primary_ids) then "--primary-ids" else ""} \
      ~{if (simple_dot) then "--simple-dot" else ""}
  >>>
  parameter_meta {
    delimiter: "output id lists using this separator (Default is \\n)"
    dot: "output pedigree in Graphviz format, using the supplied\\ntext as a title"
    families: "output information about family structures"
    female_ids: "output ids of all females"
    founder_ids: "output ids of all founders"
    male_ids: "output ids of all males"
    maternal_ids: "output ids of maternal individuals"
    paternal_ids: "output ids of paternal individuals"
    primary_ids: "output ids of all primary individuals"
    simple_dot: "when outputting Graphviz format, use a layout that\\nlooks less like a traditional pedigree diagram but\\nworks better with large complex pedigrees"
    file: "the pedigree file to process, may be PED or VCF, use\\n'-' to read from stdin"
  }
  output {
    File out_stdout = stdout()
  }
}