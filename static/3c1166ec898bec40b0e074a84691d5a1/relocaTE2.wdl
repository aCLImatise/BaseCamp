version 1.0

task RelocaTE2.py {
  input {
    String? bam
    String? te_fast_a
    String? fq_dir
    String? genome_fast_a
    String? reference_ins
    String? outdir
    Int? size
    String? cpu
    String? mate_one_id
    String? mate_two_id
    String? unpaired_id
    String? sample
    String? aligner
    String? len_cut_match
    String? len_cut_trim
    String? mismatch
    String? mismatch_junction
    String? step
    Boolean? dry_run
    Boolean? run
    Boolean? split
    String? verbose
  }
  command <<<
    relocaTE2.py \
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
      ~{true="--dry_run" false="" dry_run} \
      ~{true="--run" false="" run} \
      ~{true="--split" false="" split} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    bam: "Name of BAM file of read mapped reference genome"
    te_fast_a: "Name of fasta sequence of repeat element"
    fq_dir: "Name of directory of input fastq sequence data"
    genome_fast_a: "Name of fasta file of reference genome sequence"
    reference_ins: "Name of RepeatMasker TE annotation of reference genome"
    outdir: "Name of output directory where to put temperary and final results"
    size: "Insert size of sequence library, default = 500"
    cpu: "Number of CPUs to use for multiplex, default = 1"
    mate_one_id: "string define paired-end read1, default = \"_1\""
    mate_two_id: "string define paired-end read2, default = \"_2\""
    unpaired_id: "string define single-end reads, default = \".unPaired\""
    sample: "string define sample name which will present in output GFF, default = \"not_given\""
    aligner: "aligner used to map reads to repeat elements, default=blat"
    len_cut_match: "length cutoff threshold for match between reads and repeat elements. Large value will lead to less sensitive but more accuracy, default = 10"
    len_cut_trim: "length cutoff threshold for trimed reads after trimming repeat sequence from reads. Large value will lead to less sensitive but more accuracy, default = 10"
    mismatch: "Number of mismatches allowed for matches between reads and repeat elements, default = 2"
    mismatch_junction: "Number of mismatches allowed for matches between junction reads and repeat elements, default = 2"
    step: "Number to control steps of pipeline, default = \"1234567\""
    dry_run: "write shell scripts only while this script excute"
    run: "run while this script excute"
    split: "split fastq into 1 M chunks to run blat/bwa jobs"
    verbose: "verbose grade to print out information in all scripts: range from 0 to 4, default = 2"
  }
}