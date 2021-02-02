version 1.0

task InDelFixer {
  input {
    File? path_output_directory
    File? path_ngs_input
    File? ir
    File? path_reference_genomes
    Int? region_reference_genome
    Int? kmer_size_default
    Int? kmer_offset_default
    Int? cut
    Int? refine
    Int? mcc
    Boolean? rm_del
    Boolean? sensitive
    Boolean? fix
    Boolean? no_hashing
    Float? realign
    Int? minimal_readlength_prior
    Int? la
    Float? ins
    Float? del
    Float? sub
    Int? max_del
    Int? minimal_average_phred
    Boolean? gop
    Boolean? gex
    Boolean? four_five_four
    Boolean? var_25
    Boolean? var_26
    String? jar
    Int four_five_four_slash_roche
    String java_jar_indelfixerjar_i_libcaseccsfastq
    String java_jar_indelfixerjar_i_libcaserfastq
  }
  command <<<
    InDelFixer \
      ~{four_five_four_slash_roche} \
      ~{java_jar_indelfixerjar_i_libcaseccsfastq} \
      ~{java_jar_indelfixerjar_i_libcaserfastq} \
      ~{if defined(path_output_directory) then ("-o " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(path_ngs_input) then ("-i " +  '"' + path_ngs_input + '"') else ""} \
      ~{if defined(ir) then ("-ir " +  '"' + ir + '"') else ""} \
      ~{if defined(path_reference_genomes) then ("-g " +  '"' + path_reference_genomes + '"') else ""} \
      ~{if defined(region_reference_genome) then ("-r " +  '"' + region_reference_genome + '"') else ""} \
      ~{if defined(kmer_size_default) then ("-k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(kmer_offset_default) then ("-v " +  '"' + kmer_offset_default + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(refine) then ("-refine " +  '"' + refine + '"') else ""} \
      ~{if defined(mcc) then ("-mcc " +  '"' + mcc + '"') else ""} \
      ~{if (rm_del) then "-rmDel" else ""} \
      ~{if (sensitive) then "-sensitive" else ""} \
      ~{if (fix) then "-fix" else ""} \
      ~{if (no_hashing) then "-noHashing" else ""} \
      ~{if defined(realign) then ("-realign " +  '"' + realign + '"') else ""} \
      ~{if defined(minimal_readlength_prior) then ("-l " +  '"' + minimal_readlength_prior + '"') else ""} \
      ~{if defined(la) then ("-la " +  '"' + la + '"') else ""} \
      ~{if defined(ins) then ("-ins " +  '"' + ins + '"') else ""} \
      ~{if defined(del) then ("-del " +  '"' + del + '"') else ""} \
      ~{if defined(sub) then ("-sub " +  '"' + sub + '"') else ""} \
      ~{if defined(max_del) then ("-maxDel " +  '"' + max_del + '"') else ""} \
      ~{if defined(minimal_average_phred) then ("-q " +  '"' + minimal_average_phred + '"') else ""} \
      ~{if (gop) then "-gop" else ""} \
      ~{if (gex) then "-gex" else ""} \
      ~{if (four_five_four) then "-454" else ""} \
      ~{if (var_25) then "-illumina" else ""} \
      ~{if (var_26) then "-pacbio" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    path_output_directory: ": Path to the output directory (default: current directory)."
    path_ngs_input: ": Path to the NGS input file (FASTA, FASTQ or SFF format) [REQUIRED]."
    ir: ": Path to the second paired end file (FASTQ) [ONLY REQUIRED if first file is also fastq]."
    path_reference_genomes: ": Path to the reference genomes file (FASTA format) [REQUIRED]."
    region_reference_genome: ": Region on the reference genome (i.e. 342-944)."
    kmer_size_default: ": Kmer size (default 10)."
    kmer_offset_default: ": Kmer offset (default 2)."
    cut: ": Cut given number of bases (primer) at 5' and 3' (default 0)."
    refine: ": Computes a consensus sequence from alignment and re-aligns against that.\\nRefinement is repeated as many times as specified."
    mcc: ": Minimal coverage to replace a reference base in the consensus (default 1)."
    rm_del: ": Removes conserved gaps from consensus sequence during refinement."
    sensitive: ": More sensitive but slower alignment."
    fix: ": Fill frame-shift causing deletions with consensus sequence."
    no_hashing: ": No fast kmer-matching to find approximate mapping region. Please use with PacBio data!"
    realign: ": Reads are aligned to the whole reference sequence,\\nif the relative mismatch rate is above the given threshold (default 0.1)."
    minimal_readlength_prior: ": Minimal read-length prior alignment (default 0)."
    la: ": Minimal read-length after alignment (default 0)."
    ins: ": The maximum percentage of insertions allowed [range 0.0 - 1.0] (default 1.0)."
    del: ": The maximum percentage of deletions allowed [range 0.0 - 1.0] (default 1.0)."
    sub: ": The maximum percentage of substitutions allowed [range 0.0 - 1.0] (default 0.5)."
    max_del: ": The maximum number of consecutive deletions allowed (default no filtering)."
    minimal_average_phred: ": Minimal average Phred score of the aligned read (default 20)."
    gop: ": Gap opening costs for Smith-Waterman (default 30)."
    gex: ": Gap extension costs for Smith-Waterman (default 3)."
    four_five_four: ": 10 open / 1 extend"
    var_25: ": 30 open / 3 extend"
    var_26: ": 5 open / 3 extend"
    jar: ""
    four_five_four_slash_roche: ": java -jar InDelFixer.jar -i libCase102.fastq -g referenceGenomes.fasta -454"
    java_jar_indelfixerjar_i_libcaseccsfastq: ": java -jar InDelFixer.jar -i libCase102.ccs.fastq -g referenceGenomes.fasta -noHashing -pacbio"
    java_jar_indelfixerjar_i_libcaserfastq: ": java -jar InDelFixer.jar -i libCase102_R1.fastq -ir libCase102_R2.fastq -g referenceGenomes.fasta -illumina"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}