version 1.0

task OptimirLibprep {
  input {
    String? vcf
    String? matures_fast_a
    String? hairpins_fast_a
    String? gff_three
    String? dir_output
    String? bowtie_two_build
  }
  command <<<
    optimir libprep \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(matures_fast_a) then ("--maturesFasta " +  '"' + matures_fast_a + '"') else ""} \
      ~{if defined(hairpins_fast_a) then ("--hairpinsFasta " +  '"' + hairpins_fast_a + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(dir_output) then ("--dirOutput " +  '"' + dir_output + '"') else ""} \
      ~{if defined(bowtie_two_build) then ("--bowtie2_build " +  '"' + bowtie_two_build + '"') else ""}
  >>>
  parameter_meta {
    vcf: "Full path of the input VCF file."
    matures_fast_a: "Path to the reference library containing mature miRNAs sequences [default: miRBase 21]"
    hairpins_fast_a: "Path to the reference library containing pri-miRNAs sequences [default: miRBase 21]"
    gff_three: "Path to the reference library containing miRNAs and pri-miRNAs coordinates [default: miRBase v21, GRCh38 coordinates]"
    dir_output: "Full path of the directory where output files are generated [default: ./OptimiR_Results_Dir/]"
    bowtie_two_build: "Provide path to the bowtie2 index builder binary [default: from $PATH]"
  }
}