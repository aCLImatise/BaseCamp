version 1.0

task Verifybamid2 {
  input {
    Boolean? bam_file
    Boolean? pile_up_file
    Boolean? reference
    Boolean? svd_prefix
    Boolean? var_output
    Boolean? disable_sanity_check
    Boolean? fix_pc
    Boolean? fix_alpha
    Boolean? known_af
    Boolean? seed
    Boolean? output_pile_up
    Boolean? ud_path
    Boolean? bed_path
  }
  command <<<
    verifybamid2 \
      ~{if (bam_file) then "--BamFile" else ""} \
      ~{if (pile_up_file) then "--PileupFile" else ""} \
      ~{if (reference) then "--Reference" else ""} \
      ~{if (svd_prefix) then "--SVDPrefix" else ""} \
      ~{if (var_output) then "--Output" else ""} \
      ~{if (disable_sanity_check) then "--DisableSanityCheck" else ""} \
      ~{if (fix_pc) then "--FixPC" else ""} \
      ~{if (fix_alpha) then "--FixAlpha" else ""} \
      ~{if (known_af) then "--KnownAF" else ""} \
      ~{if (seed) then "--Seed" else ""} \
      ~{if (output_pile_up) then "--OutputPileup" else ""} \
      ~{if (ud_path) then "--UDPath" else ""} \
      ~{if (bed_path) then "--BedPath" else ""}
  >>>
  parameter_meta {
    bam_file: "[Empty],"
    pile_up_file: "[Empty],"
    reference: "[Empty],"
    svd_prefix: "[/usr/local/share/verifybamid2-1.0.6-1/resource/1000g.100k.b38.vcf.gz.dat],"
    var_output: "[result]"
    disable_sanity_check: "[2],"
    fix_pc: "[Empty],"
    fix_alpha: "[-1.0e+00],"
    known_af: "[Empty], --NumThread [4],"
    seed: "[12345], --Epsilon [1.0e-08],"
    output_pile_up: ""
    ud_path: "[Empty], --MeanPath [Empty],"
    bed_path: "[Empty]"
  }
  output {
    File out_stdout = stdout()
  }
}