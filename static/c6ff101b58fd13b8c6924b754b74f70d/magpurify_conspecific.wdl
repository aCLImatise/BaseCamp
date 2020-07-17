version 1.0

task MagpurifyConspecific {
  input {
    String? mash_dist
    Int? max_genomes
    Int? min_genomes
    String? contig_aln
    String? contig_pid
    String? hit_rate
    Array[String] exclude
    String? threads
    String fna
    String out
    String mash_sketch
  }
  command <<<
    magpurify conspecific \
      ~{fna} \
      ~{out} \
      ~{mash_sketch} \
      ~{if defined(mash_dist) then ("--mash-dist " +  '"' + mash_dist + '"') else ""} \
      ~{if defined(max_genomes) then ("--max-genomes " +  '"' + max_genomes + '"') else ""} \
      ~{if defined(min_genomes) then ("--min-genomes " +  '"' + min_genomes + '"') else ""} \
      ~{if defined(contig_aln) then ("--contig-aln " +  '"' + contig_aln + '"') else ""} \
      ~{if defined(contig_pid) then ("--contig-pid " +  '"' + contig_pid + '"') else ""} \
      ~{if defined(hit_rate) then ("--hit-rate " +  '"' + hit_rate + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    mash_dist: "Mash distance to reference genomes (default: 0.05)"
    max_genomes: "Max number of genomes to use (default: 25)"
    min_genomes: "Min number of genomes to use (default: 1)"
    contig_aln: "Minimum fraction of contig aligned to reference (default: 0.5)"
    contig_pid: "Minimum percent identity of contig aligned to reference (default: 95.0)"
    hit_rate: "Hit rate for flagging contigs (default: 0.0)"
    exclude: "List of references to exclude (default: )"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate files"
    mash_sketch: "Path to Mash sketch of reference genomes"
  }
}