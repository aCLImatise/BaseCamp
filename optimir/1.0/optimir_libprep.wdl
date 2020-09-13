version 1.0

task OptimirLibprep {
  input {
    File? vcf
    File? matures_fast_a
    File? hairpins_fast_a
    Int? gff_three
    File? dir_output
    Int? bowtie_two_build
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
    matures_fast_a: "Path to the reference library containing mature miRNAs\\nsequences [default: miRBase 21]"
    hairpins_fast_a: "Path to the reference library containing pri-miRNAs\\nsequences [default: miRBase 21]"
    gff_three: "Path to the reference library containing miRNAs and\\npri-miRNAs coordinates [default: miRBase v21, GRCh38\\ncoordinates]"
    dir_output: "Full path of the directory where output files are\\ngenerated [default: ./OptimiR_Results_Dir/]"
    bowtie_two_build: "Provide path to the bowtie2 index builder binary\\n[default: from $PATH]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_dir_output = "${in_dir_output}"
  }
}