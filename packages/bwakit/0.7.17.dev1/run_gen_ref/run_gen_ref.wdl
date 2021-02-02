version 1.0

task Rungenref {
  input {
    Int hs_three_eight
    Int hs_three_eight_a
    Int hs_three_eight_dh
    Int hs_three_seven
    Int hs_three_seven_d_five
  }
  command <<<
    run_gen_ref \
      ~{hs_three_eight} \
      ~{hs_three_eight_a} \
      ~{hs_three_eight_dh} \
      ~{hs_three_seven} \
      ~{hs_three_seven_d_five}
  >>>
  parameter_meta {
    hs_three_eight: "primary assembly of GRCh38 (incl. chromosomes, unplaced and unlocalized contigs) and EBV"
    hs_three_eight_a: "hs38 plus ALT contigs"
    hs_three_eight_dh: "hs38a plus decoy contigs and HLA genes (recommended for GRCh38 mapping)"
    hs_three_seven: "primary assembly of GRCh37 (used by 1000g phase 1) plus the EBV genome"
    hs_three_seven_d_five: "hs37 plus decoy contigs (used by 1000g phase 3)"
  }
  output {
    File out_stdout = stdout()
  }
}