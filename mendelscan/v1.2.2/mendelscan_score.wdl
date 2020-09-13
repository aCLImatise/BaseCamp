version 1.0

task MendelscanScore {
  input {
    Boolean? vep_file
    Boolean? ped_file
    Boolean? gene_file
    File? output_file
    File? output_vcf
    Boolean? inheritance
    Boolean? seg_score_case_ref
    Boolean? seg_score_case_het
    Boolean? seg_score_case_hom
    Float? seg_score_control_het
    Float? seg_score_control_hom
    Boolean? max_vaf_for_ref
    Boolean? min_vaf_to_recall
    Boolean? pop_score_novel
    Boolean? pop_score_mutation
    Boolean? pop_score_known
    Boolean? pop_score_rare
    Boolean? pop_score_uncommon
    Boolean? pop_score_common
    Boolean? an_no_score_one
    Boolean? an_no_score_two
    Boolean? an_no_score_three
    Boolean? an_no_score_four
    Boolean? an_no_score_five
    Boolean? an_no_score_six
    Boolean? an_no_score_seven
    Boolean? an_no_score_eight
    Boolean? an_no_score_nine
    Int? an_no_score_one_zero
    Int? an_no_score_one_one
    Int? an_no_score_one_two
    Int? an_no_score_one_three
    Int? an_no_score_one_four
    Int? an_no_score_one_five
    Int? an_no_score_one_six
    Int? an_no_score_one_seven
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
      ~{if (vep_file) then "--vep-file" else ""} \
      ~{if (ped_file) then "--ped-file" else ""} \
      ~{if (gene_file) then "--gene-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_vcf) then "--output-vcf" else ""} \
      ~{if (inheritance) then "--inheritance" else ""} \
      ~{if (seg_score_case_ref) then "--seg-score-case-ref" else ""} \
      ~{if (seg_score_case_het) then "--seg-score-case-het" else ""} \
      ~{if (seg_score_case_hom) then "--seg-score-case-hom" else ""} \
      ~{if defined(seg_score_control_het) then ("--seg-score-control-het " +  '"' + seg_score_control_het + '"') else ""} \
      ~{if defined(seg_score_control_hom) then ("--seg-score-control-hom " +  '"' + seg_score_control_hom + '"') else ""} \
      ~{if (max_vaf_for_ref) then "--max-vaf-for-ref" else ""} \
      ~{if (min_vaf_to_recall) then "--min-vaf-to-recall" else ""} \
      ~{if (pop_score_novel) then "--pop-score-novel" else ""} \
      ~{if (pop_score_mutation) then "--pop-score-mutation" else ""} \
      ~{if (pop_score_known) then "--pop-score-known" else ""} \
      ~{if (pop_score_rare) then "--pop-score-rare" else ""} \
      ~{if (pop_score_uncommon) then "--pop-score-uncommon" else ""} \
      ~{if (pop_score_common) then "--pop-score-common" else ""} \
      ~{if (an_no_score_one) then "--anno-score-1" else ""} \
      ~{if (an_no_score_two) then "--anno-score-2" else ""} \
      ~{if (an_no_score_three) then "--anno-score-3" else ""} \
      ~{if (an_no_score_four) then "--anno-score-4" else ""} \
      ~{if (an_no_score_five) then "--anno-score-5" else ""} \
      ~{if (an_no_score_six) then "--anno-score-6" else ""} \
      ~{if (an_no_score_seven) then "--anno-score-7" else ""} \
      ~{if (an_no_score_eight) then "--anno-score-8" else ""} \
      ~{if (an_no_score_nine) then "--anno-score-9" else ""} \
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
    vep_file: "Variant annotation in VEP format"
    ped_file: "Pedigree file in 6-column tab-delimited format"
    gene_file: "A list of gene expression values for tissue of interest"
    output_file: "Output file to contain human-friendly scored variants"
    output_vcf: "Output file to contain scored variants in VCF format"
    inheritance: "Presumed model of inheritance: dominant, recessive, x-linked [dominant]"
    seg_score_case_ref: "A case sample was called reference/wild-type (0.50/0.10)"
    seg_score_case_het: "A case sample was called heterozygous (NA/0.50)"
    seg_score_case_hom: "A case sample was called homozygous variant (0.80/NA)"
    seg_score_control_het: "case sample was called heterozygous (0.10/NA)"
    seg_score_control_hom: "case sample was called homozygous variant (0.01/0.10)"
    max_vaf_for_ref: "Maximum non-ref (variant) allele frequency at ref site to count as ref [0.05]"
    min_vaf_to_recall: "Minimum VAF at which a reference genotype will be considered het. To disable recall, set to 1.01 [0.20]"
    pop_score_novel: "Variant is not present in dbSNP according to VCF (1.00)"
    pop_score_mutation: "Variant from mutation (OMIM) or locus-specific databases (0.95)"
    pop_score_known: "Variant known to dbSNP but no mutation or GMAF info (0.60)"
    pop_score_rare: "Variant in dbSNP with GMAF < 0.01 (0.20)"
    pop_score_uncommon: "Variant in dbSNP with GMAF 0.01-0.05 (0.02)"
    pop_score_common: "Variant in dbSNP with GMAF >= 0.05 (0.01)"
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
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_vcf = "${in_output_vcf}"
  }
}