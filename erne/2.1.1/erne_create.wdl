version 1.0

task ErneCreate {
  input {
    String? fast_a
    String? output_prefix
    Boolean? methyl_hash
    String? fingerprint_length_default
    String? bl
    String? offrate_sa_pointers
    Boolean? former_hash
  }
  command <<<
    erne-create \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--methyl-hash" false="" methyl_hash} \
      ~{if defined(fingerprint_length_default) then ("--k " +  '"' + fingerprint_length_default + '"') else ""} \
      ~{if defined(bl) then ("--bl " +  '"' + bl + '"') else ""} \
      ~{if defined(offrate_sa_pointers) then ("--o " +  '"' + offrate_sa_pointers + '"') else ""} \
      ~{true="--former-hash" false="" former_hash}
  >>>
  parameter_meta {
    fast_a: "input file (can be repeated several time) [REQUIRED]"
    output_prefix: "output reference file name in ERNE format. Suffix added automatically: .ebh for dB-Hash reference, .ebm for  dB-Hash methylated reference. [REQUIRED]"
    methyl_hash: "create reference for methylation search"
    fingerprint_length_default: "[DEPRECATED] fingerprint length (default is  autodetected: log4(bl*n/2), where n=text length);  the  range of admissible values is 5-32. With --methyl-hash  the range of admissible values is 10-64"
    bl: "seed length (default: 20 for DNA search, 30 for  BS-search)"
    offrate_sa_pointers: "offrate for SA pointers (default: 16)."
    former_hash: ""
  }
}