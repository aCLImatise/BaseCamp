version 1.0

task MendelscanScore {
  input {
    Boolean? seg_score_case_ref
    Boolean? seg_score_case_het
    Boolean? seg_score_case_hom
    String? seg_score_control_het
    String? seg_score_control_hom
    Boolean? an_no_score_one
    Boolean? an_no_score_two
    Boolean? an_no_score_three
    Boolean? an_no_score_four
    Boolean? an_no_score_five
    Boolean? an_no_score_six
    Boolean? an_no_score_seven
    Boolean? an_no_score_eight
    Boolean? an_no_score_nine
    String? an_no_score_one_zero
    String? an_no_score_one_one
    String? an_no_score_one_two
    String? an_no_score_one_three
    String? an_no_score_one_four
    String? an_no_score_one_five
    String? an_no_score_one_six
    String? an_no_score_one_seven
    String? jar
    String java
    String score
    String? vcf
  }
  command <<<
    mendelscan score \
      ~{java} \
      ~{score} \
      ~{vcf} \
      ~{true="--seg-score-case-ref" false="" seg_score_case_ref} \
      ~{true="--seg-score-case-het" false="" seg_score_case_het} \
      ~{true="--seg-score-case-hom" false="" seg_score_case_hom} \
      ~{if defined(seg_score_control_het) then ("--seg-score-control-het " +  '"' + seg_score_control_het + '"') else ""} \
      ~{if defined(seg_score_control_hom) then ("--seg-score-control-hom " +  '"' + seg_score_control_hom + '"') else ""} \
      ~{true="--anno-score-1" false="" an_no_score_one} \
      ~{true="--anno-score-2" false="" an_no_score_two} \
      ~{true="--anno-score-3" false="" an_no_score_three} \
      ~{true="--anno-score-4" false="" an_no_score_four} \
      ~{true="--anno-score-5" false="" an_no_score_five} \
      ~{true="--anno-score-6" false="" an_no_score_six} \
      ~{true="--anno-score-7" false="" an_no_score_seven} \
      ~{true="--anno-score-8" false="" an_no_score_eight} \
      ~{true="--anno-score-9" false="" an_no_score_nine} \
      ~{if defined(an_no_score_one_zero) then ("--anno-score-10 " +  '"' + an_no_score_one_zero + '"') else ""} \
      ~{if defined(an_no_score_one_one) then ("--anno-score-11 " +  '"' + an_no_score_one_one + '"') else ""} \
      ~{if defined(an_no_score_one_two) then ("--anno-score-12 " +  '"' + an_no_score_one_two + '"') else ""} \
      ~{if defined(an_no_score_one_three) then ("--anno-score-13 " +  '"' + an_no_score_one_three + '"') else ""} \
      ~{if defined(an_no_score_one_four) then ("--anno-score-14 " +  '"' + an_no_score_one_four + '"') else ""} \
      ~{if defined(an_no_score_one_five) then ("--anno-score-15 " +  '"' + an_no_score_one_five + '"') else ""} \
      ~{if defined(an_no_score_one_six) then ("--anno-score-16 " +  '"' + an_no_score_one_six + '"') else ""} \
      ~{if defined(an_no_score_one_seven) then ("--anno-score-17 " +  '"' + an_no_score_one_seven + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    seg_score_case_ref: "A case sample was called reference/wild-type (0.50/0.10)"
    seg_score_case_het: "A case sample was called heterozygous (NA/0.50)"
    seg_score_case_hom: "A case sample was called homozygous variant (0.80/NA)"
    seg_score_control_het: "case sample was called heterozygous (0.10/NA)"
    seg_score_control_hom: "case sample was called homozygous variant (0.01/0.10)"
    an_no_score_one: "Score for intergenic mutations [0.01]"
    an_no_score_two: "Score for intronic mutations [0.01]"
    an_no_score_three: "Score for downstream mutations [0.01]"
    an_no_score_four: "Score for upstream mutations [0.01]"
    an_no_score_five: "Score for UTR mutations [0.01]"
    an_no_score_six: "Score for ncRNA mutations [0.01]"
    an_no_score_seven: "Score for miRNA mutations [0.01]"
    an_no_score_eight: "Score for synonymous coding mutations [0.05]"
    an_no_score_nine: "Score for splice region mutations [0.20]"
    an_no_score_one_zero: "for nonstop mutations [1.00]"
    an_no_score_one_one: "for missense mutations not predicted damaging [0.80]"
    an_no_score_one_two: "for missense mutations damaging by 1/3 algorithms [0.95]"
    an_no_score_one_three: "for missense mutations damaging by 2/3 algorithms [0.95]"
    an_no_score_one_four: "for missense mutations damaging by 3/3 algorithms [0.95]"
    an_no_score_one_five: "for essential splice site mutations [1.00]"
    an_no_score_one_six: "for frameshift mutations [1.00]"
    an_no_score_one_seven: "for nonsense mutations [1.00]"
    jar: ""
    java: ""
    score: ""
    vcf: ""
  }
}