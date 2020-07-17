version 1.0

task OptimirProcess {
  input {
    String? fq
    String? dir_output
    String? vcf
    String? seed_len
    String? w_five
    String? score_thresh
    String? consistent_rate
    Boolean? rm_temp_files
    String? an_not
    Boolean? gff_out
    Boolean? vcf_out
    String? adapt_three
    String? adapt_five
    String? re_admin
    String? read_max
    String? bq_thresh
    Boolean? trim_again
    String? matures_fast_a
    String? hairpins_fast_a
    String? gff_three
    Boolean? quiet
    String? cut_adapt
    String? bowtie_two
    String? bowtie_two_build
    String? sam_tools
  }
  command <<<
    optimir process \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(dir_output) then ("--dirOutput " +  '"' + dir_output + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(seed_len) then ("--seedLen " +  '"' + seed_len + '"') else ""} \
      ~{if defined(w_five) then ("--w5 " +  '"' + w_five + '"') else ""} \
      ~{if defined(score_thresh) then ("--scoreThresh " +  '"' + score_thresh + '"') else ""} \
      ~{if defined(consistent_rate) then ("--consistentRate " +  '"' + consistent_rate + '"') else ""} \
      ~{true="--rmTempFiles" false="" rm_temp_files} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{true="--gff_out" false="" gff_out} \
      ~{true="--vcf_out" false="" vcf_out} \
      ~{if defined(adapt_three) then ("--adapt3 " +  '"' + adapt_three + '"') else ""} \
      ~{if defined(adapt_five) then ("--adapt5 " +  '"' + adapt_five + '"') else ""} \
      ~{if defined(re_admin) then ("--readMin " +  '"' + re_admin + '"') else ""} \
      ~{if defined(read_max) then ("--readMax " +  '"' + read_max + '"') else ""} \
      ~{if defined(bq_thresh) then ("--bqThresh " +  '"' + bq_thresh + '"') else ""} \
      ~{true="--trimAgain" false="" trim_again} \
      ~{if defined(matures_fast_a) then ("--maturesFasta " +  '"' + matures_fast_a + '"') else ""} \
      ~{if defined(hairpins_fast_a) then ("--hairpinsFasta " +  '"' + hairpins_fast_a + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(cut_adapt) then ("--cutadapt " +  '"' + cut_adapt + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_build) then ("--bowtie2_build " +  '"' + bowtie_two_build + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""}
  >>>
  parameter_meta {
    fq: "Full path of the sample fastq file (accepted formats and extensions: fastq, fq and fq.gz)"
    dir_output: "Full path of the directory where output files are generated [default: ./OptimiR_Results_Dir/]"
    vcf: "Full path of the vcf file with genotypes"
    seed_len: "Choose the alignment seed length used in option '-L' by Bowtie2 [default: 17]"
    w_five: "Choose the weight applied on events detected on the 5' end of aligned reads [default: 4]"
    score_thresh: "Choose the threshold for alignment score above which alignments are discarded [default: 9]"
    consistent_rate: "Choose the rate threshold for inconsistent reads mapped to a polymiR above which the alignment is flagged as highly suspicious [default: 0.01]"
    rm_temp_files: "Add this option to remove temporary files (trimmed fastq, collapsed fastq, mapped reads, annotated bams"
    an_not: "Control which annotation file is produced by adding corresponding letter : 'h' for expressed_hairpins, 'p' for polymiRs_table, 'i' for consistency_table, 'c' for remaining_ambiguous, 's' for isomiRs_dist. Ex: '-- annot hpics' [default] will produce all of them"
    gff_out: "Add this option to generate results in mirGFF3 format [default : disabled]"
    vcf_out: "Add this option to generate results in VCF format [default : disabled]"
    adapt_three: "Define the 3' adaptor sequence (default is NEB & ILLUMINA: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -a TGGAATTCTCGGGTGCCAAGG -> hack: use -a to add adapter sequences)"
    adapt_five: "Define the 5' adaptor sequence [default: None]"
    re_admin: "Define the minimum read length defined with option -m in cutadapt [default: 15]"
    read_max: "Define the maximum read length defined with option -M in cutadapt [default: 27]"
    bq_thresh: "Define the Base Quality threshold defined with option -q in cutadapt [default: 28]"
    trim_again: "Add this option to trim files that have been trimmed in a previous application. By default, when temporary files are kept, trimmed files are reused. If you wish to change a paramater used in the trimming step of the workflow, this parameter is a must [default: disabled]"
    matures_fast_a: "Path to the reference library containing mature miRNAs sequences [default: miRBase 21]"
    hairpins_fast_a: "Path to the reference library containing pri-miRNAs sequences [default: miRBase 21]"
    gff_three: "Path to the reference library containing miRNAs and pri-miRNAs coordinates [default: miRBase v21, GRCh38 coordinates]"
    quiet: "Add this option to remove OptimiR progression on screen [default: disabled]"
    cut_adapt: "Provide path to the cutadapt binary [default: from $PATH]"
    bowtie_two: "Provide path to the bowtie2 binary [default: from $PATH]"
    bowtie_two_build: "Provide path to the bowtie2 index builder binary [default: from $PATH]"
    sam_tools: "Provide path to the samtools binary [default: from $PATH]"
  }
}