version 1.0

task BFst {
  input {
    Boolean? contact
    Boolean? notes
    Boolean? support
    Boolean? contribution
    Int one_dot
    Int two_dot
    Int three_dot
    Int four_dot
    Int five_dot
    Int six_dot
    Int seven_dot
    Int eight_dot
    Int nine_dot
  }
  command <<<
    bFst \
      ~{one_dot} \
      ~{two_dot} \
      ~{three_dot} \
      ~{four_dot} \
      ~{five_dot} \
      ~{six_dot} \
      ~{seven_dot} \
      ~{eight_dot} \
      ~{nine_dot} \
      ~{if (contact) then "-Contact" else ""} \
      ~{if (notes) then "-Notes" else ""} \
      ~{if (support) then "-Support" else ""} \
      ~{if (contribution) then "-Contribution" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    contact: ": zev.kronenberg [at] gmail.com"
    notes: ": If you find a bug, please open a report on github!"
    support: ": Please post questions to biostars.org"
    contribution: ":\\nZev Kronenberg (UW Genome Sciences)\\nMark Yandell   (UU Human genetics)\\nMike Shapiro   (UU Biology)\\nEJ Osborne     (UU Human genetics)\\nBrett Kennedy  (UU Human genetics)\\nDaniel Ence    (UU Human genetics)\\nErik Garrison  (Wellcome Trust Sanger Institute)\\nTravis Collier (UC Davis)\\n-     Your name goes here       -'"
    one_dot: "Seqid                                     "
    two_dot: "Position                                    "
    three_dot: "Observed allele frequency in target.        "
    four_dot: "Estimated allele frequency in target.     "
    five_dot: "Observed allele frequency in background.  "
    six_dot: "Estimated allele frequency in background. "
    seven_dot: "Observed allele frequency combined.         "
    eight_dot: "Estimated allele frequency in combined.   "
    nine_dot: "ML estimate of Fst (mean)                   "
  }
  output {
    File out_stdout = stdout()
  }
}