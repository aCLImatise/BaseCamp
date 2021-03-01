version 1.0

task Ernecreate {
  input {
    File? fast_a
    File? output_prefix
    Boolean? methyl_hash
    Int? fingerprint_length_default
    Int? bl
    Int? offrate_sa_pointers
  }
  command <<<
    erne_create \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (methyl_hash) then "--methyl-hash" else ""} \
      ~{if defined(fingerprint_length_default) then ("--k " +  '"' + fingerprint_length_default + '"') else ""} \
      ~{if defined(bl) then ("--bl " +  '"' + bl + '"') else ""} \
      ~{if defined(offrate_sa_pointers) then ("--o " +  '"' + offrate_sa_pointers + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "input file (can be repeated several time) [REQUIRED]"
    output_prefix: "output reference file name in ERNE format. Suffix added\\nautomatically: .ebh for dB-Hash reference, .ebm for\\ndB-Hash methylated reference. [REQUIRED]"
    methyl_hash: "create reference for methylation search"
    fingerprint_length_default: "[DEPRECATED] fingerprint length (default is\\nautodetected: log4(bl*n/2), where n=text length);  the\\nrange of admissible values is 5-32. With --methyl-hash\\nthe range of admissible values is 10-64"
    bl: "seed length (default: 20 for DNA search, 30 for\\nBS-search)"
    offrate_sa_pointers: "offrate for SA pointers (default: 16)."
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}