version 1.0

task MotusMapSnv {
  input {
    String profile
    String merge
    String map_tax
    String calc_mgc
    String calc_motu
    String map_snv
    String snv_call
  }
  command <<<
    motus map_snv \
      ~{profile} \
      ~{merge} \
      ~{map_tax} \
      ~{calc_mgc} \
      ~{calc_motu} \
      ~{map_snv} \
      ~{snv_call}
  >>>
  parameter_meta {
    profile: "Perform a taxonomic profiling (map_tax + calc_mgc + calc_motu)"
    merge: "Merge different taxonomic profiles to create a table"
    map_tax: "Map reads to the marker gene database"
    calc_mgc: "Aggregate reads from the same marker gene cluster (mgc)"
    calc_motu: "From a mgc abundance table, produce the mOTU abundance table"
    map_snv: "Map reads to create bam/sam file for snv calling"
    snv_call: "SNV calling using metaSNV"
  }
  output {
    File out_stdout = stdout()
  }
}