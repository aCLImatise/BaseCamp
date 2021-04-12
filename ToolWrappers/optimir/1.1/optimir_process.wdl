version 1.0

task OptimirProcess {
  input {
    File? fq
    File? dir_output
    File? vcf
    Int? seed_len
    Int? w_five
    Int? score_thresh
    Float? consistent_rate
    Boolean? rm_temp_files
    File? an_not
    Boolean? gff_out
    Boolean? vcf_out
    Int? adapt_three
    Int? adapt_five
    Int? re_admin
    Int? read_max
    String? bq_thresh
    Int? cutadapt
    Boolean? trim_again
    File? matures_fast_a
    File? hairpins_fast_a
    Int? gff_three
    Boolean? quiet
    File? cut_adapt
    Int? bowtie_two
    Int? bowtie_two_build
    File? sam_tools
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
      ~{if (rm_temp_files) then "--rmTempFiles" else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if (gff_out) then "--gff_out" else ""} \
      ~{if (vcf_out) then "--vcf_out" else ""} \
      ~{if defined(adapt_three) then ("--adapt3 " +  '"' + adapt_three + '"') else ""} \
      ~{if defined(adapt_five) then ("--adapt5 " +  '"' + adapt_five + '"') else ""} \
      ~{if defined(re_admin) then ("--readMin " +  '"' + re_admin + '"') else ""} \
      ~{if defined(read_max) then ("--readMax " +  '"' + read_max + '"') else ""} \
      ~{if defined(bq_thresh) then ("--bqThresh " +  '"' + bq_thresh + '"') else ""} \
      ~{if defined(cutadapt) then ("-q " +  '"' + cutadapt + '"') else ""} \
      ~{if (trim_again) then "--trimAgain" else ""} \
      ~{if defined(matures_fast_a) then ("--maturesFasta " +  '"' + matures_fast_a + '"') else ""} \
      ~{if defined(hairpins_fast_a) then ("--hairpinsFasta " +  '"' + hairpins_fast_a + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(cut_adapt) then ("--cutadapt " +  '"' + cut_adapt + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_build) then ("--bowtie2_build " +  '"' + bowtie_two_build + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/optimir:1.1--pyh3252c3a_0"
  }
  parameter_meta {
    fq: "Full path of the sample fastq file (accepted formats\\nand extensions: fastq, fq and fq.gz)"
    dir_output: "Full path of the directory where output files are\\ngenerated [default: ./OptimiR_Results_Dir/]"
    vcf: "Full path of the vcf file with genotypes"
    seed_len: "Choose the alignment seed length used in option '-L'\\nby Bowtie2 [default: 17]"
    w_five: "Choose the weight applied on events detected on the 5'\\nend of aligned reads [default: 4]"
    score_thresh: "Choose the threshold for alignment score above which\\nalignments are discarded [default: 9]"
    consistent_rate: "Choose the rate threshold for inconsistent reads\\nmapped to a polymiR above which the alignment is\\nflagged as highly suspicious [default: 0.01]"
    rm_temp_files: "Add this option to remove temporary files (trimmed\\nfastq, collapsed fastq, mapped reads, annotated bams"
    an_not: "Control which annotation file is produced by adding\\ncorresponding letter : 'h' for expressed_hairpins, 'p'\\nfor polymiRs_table, 'i' for consistency_table, 'c' for\\nremaining_ambiguous, 's' for isomiRs_dist. Ex: '--\\nannot hpics' [default] will produce all of them"
    gff_out: "Add this option to generate results in mirGFF3 format\\n[default : disabled]"
    vcf_out: "Add this option to generate results in VCF format\\n[default : disabled]"
    adapt_three: "Define the 3' adaptor sequence (default is NEB &\\nILLUMINA: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -a\\nTGGAATTCTCGGGTGCCAAGG -> hack: use -a to add adapter\\nsequences)"
    adapt_five: "Define the 5' adaptor sequence [default: None]"
    re_admin: "Define the minimum read length defined with option -m\\nin cutadapt [default: 15]"
    read_max: "Define the maximum read length defined with option -M\\nin cutadapt [default: 27]"
    bq_thresh: "Define the Base Quality threshold defined with option"
    cutadapt: "cutadapt [default: 28]"
    trim_again: "Add this option to trim files that have been trimmed\\nin a previous application. By default, when temporary\\nfiles are kept, trimmed files are reused. If you wish\\nto change a paramater used in the trimming step of the\\nworkflow, this parameter is a must [default: disabled]"
    matures_fast_a: "Path to the reference library containing mature miRNAs\\nsequences [default: miRBase 21]"
    hairpins_fast_a: "Path to the reference library containing pri-miRNAs\\nsequences [default: miRBase 21]"
    gff_three: "Path to the reference library containing miRNAs and\\npri-miRNAs coordinates [default: miRBase v21, GRCh38\\ncoordinates]"
    quiet: "Add this option to remove OptimiR progression on\\nscreen [default: disabled]"
    cut_adapt: "Provide path to the cutadapt binary [default: from\\n$PATH]"
    bowtie_two: "Provide path to the bowtie2 binary [default: from\\n$PATH]"
    bowtie_two_build: "Provide path to the bowtie2 index builder binary\\n[default: from $PATH]"
    sam_tools: "Provide path to the samtools binary [default: from\\n$PATH]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_dir_output = "${in_dir_output}"
  }
}