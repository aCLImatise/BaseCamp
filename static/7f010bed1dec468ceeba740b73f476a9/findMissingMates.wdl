version 1.0

task FindMissingMates {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Boolean? looks_mates_virtue
    Boolean? only_display_missing
    Boolean? use_mate_information
    String? contig_eid_interest
    String? contig_iid_interest
    String? start_of_range
    String? end_of_range
    String find_missing_mates
  }
  command <<<
    findMissingMates \
      ~{find_missing_mates} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-S" false="" looks_mates_virtue} \
      ~{true="-M" false="" only_display_missing} \
      ~{true="-m" false="" use_mate_information} \
      ~{if defined(contig_eid_interest) then ("-E " +  '"' + contig_eid_interest + '"') else ""} \
      ~{if defined(contig_iid_interest) then ("-I " +  '"' + contig_iid_interest + '"') else ""} \
      ~{if defined(start_of_range) then ("-x " +  '"' + start_of_range + '"') else ""} \
      ~{if defined(end_of_range) then ("-y " +  '"' + end_of_range + '"') else ""}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    looks_mates_virtue: "Looks for mates by virtue of the scaffold"
    only_display_missing: "Only display missing mates (not reads already present in range)"
    use_mate_information: "Don't use mate information, just read tiling"
    contig_eid_interest: "Contig eid of interest"
    contig_iid_interest: "Contig iid of interest"
    start_of_range: "Start of range"
    end_of_range: "End of range"
    find_missing_mates: "[options]  -b <bank path>"
  }
}