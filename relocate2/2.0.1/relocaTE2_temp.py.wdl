version 1.0

task RelocaTE2Temppy {
  input {
    File? bam
    String? te_fast_a
    Directory? fq_dir
    File? genome_fast_a
    String? reference_ins
    Directory? outdir
    Int? size
    Int? cpu
    Int? mate_one_id
    Int? mate_two_id
    String? unpaired_id
    String? sample
    String? aligner
    Int? len_cut_match
    Int? len_cut_trim
    Int? mismatch
    Int? mismatch_junction
    Int? step
    Boolean? dry_run
    Boolean? run
    Boolean? split
    Int? verbose
  }
  command <<<
    relocaTE2_temp_py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(te_fast_a) then ("--te_fasta " +  '"' + te_fast_a + '"') else ""} \
      ~{if defined(fq_dir) then ("--fq_dir " +  '"' + fq_dir + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome_fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(reference_ins) then ("--reference_ins " +  '"' + reference_ins + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(mate_one_id) then ("--mate_1_id " +  '"' + mate_one_id + '"') else ""} \
      ~{if defined(mate_two_id) then ("--mate_2_id " +  '"' + mate_two_id + '"') else ""} \
      ~{if defined(unpaired_id) then ("--unpaired_id " +  '"' + unpaired_id + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(len_cut_match) then ("--len_cut_match " +  '"' + len_cut_match + '"') else ""} \
      ~{if defined(len_cut_trim) then ("--len_cut_trim " +  '"' + len_cut_trim + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(mismatch_junction) then ("--mismatch_junction " +  '"' + mismatch_junction + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if (dry_run) then "--dry_run" else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    bam: "Name of BAM file of read mapped reference genome"
    te_fast_a: "Name of fasta sequence of repeat element"
    fq_dir: "Name of directory of input fastq sequence data"
    genome_fast_a: "Name of fasta file of reference genome sequence"
    reference_ins: "Name of RepeatMasker TE annotation of reference genome"
    outdir: "Name of output directory where to put temperary and\\nfinal results"
    size: "Insert size of sequence library, default = 500"
    cpu: "Number of CPUs to use for multiplex, default = 1"
    mate_one_id: "string define paired-end read1, default = \\\"_1\\\""
    mate_two_id: "string define paired-end read2, default = \\\"_2\\\""
    unpaired_id: "string define single-end reads, default = \\\".unPaired\\\""
    sample: "string define sample name which will present in output\\nGFF, default = \\\"not_given\\\""
    aligner: "aligner used to map reads to repeat elements,\\ndefault=blat"
    len_cut_match: "length cutoff threshold for match between reads and\\nrepeat elements. Large value will lead to less\\nsensitive but more accuracy, default = 10"
    len_cut_trim: "length cutoff threshold for trimed reads after\\ntrimming repeat sequence from reads. Large value will\\nlead to less sensitive but more accuracy, default = 10"
    mismatch: "Number of mismatches allowed for matches between reads\\nand repeat elements, default = 2"
    mismatch_junction: "Number of mismatches allowed for matches between\\njunction reads and repeat elements, default = 2"
    step: "Number to control steps of pipeline, default =\\n\\\"1234567\\\""
    dry_run: "write shell scripts only while this script excute"
    run: "run while this script excute"
    split: "split fastq into 1 M chunks to run blat/bwa jobs"
    verbose: "verbose grade to print out information in all scripts:\\nrange from 0 to 4, default = 2\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}