version 1.0

task Transabyss {
  input {
    Array[File] se
    Array[File] pe
    Boolean? ss
    Directory? outdir
    String? name
    String? stage
    Int? length
    String? cleanup
    Int? threads
    Int? mpi
    Int? km_er
    Int? cov
    Int? eros
    Int? s_eros
    Int? q_ends
    Int? q_all
    Int? pairs
    Int? seed
    Int? g_sim
    Int? in_del
    Int? island
    Boolean? use_blat
    Float? pid
    Float? walk
    Boolean? no_ref
  }
  command <<<
    transabyss \
      ~{if defined(se) then ("--se " +  '"' + se + '"') else ""} \
      ~{if defined(pe) then ("--pe " +  '"' + pe + '"') else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(stage) then ("--stage " +  '"' + stage + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(cleanup) then ("--cleanup " +  '"' + cleanup + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mpi) then ("--mpi " +  '"' + mpi + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(eros) then ("--eros " +  '"' + eros + '"') else ""} \
      ~{if defined(s_eros) then ("--seros " +  '"' + s_eros + '"') else ""} \
      ~{if defined(q_ends) then ("--qends " +  '"' + q_ends + '"') else ""} \
      ~{if defined(q_all) then ("--qall " +  '"' + q_all + '"') else ""} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(g_sim) then ("--gsim " +  '"' + g_sim + '"') else ""} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(island) then ("--island " +  '"' + island + '"') else ""} \
      ~{if (use_blat) then "--useblat" else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if defined(walk) then ("--walk " +  '"' + walk + '"') else ""} \
      ~{if (no_ref) then "--noref" else ""}
  >>>
  parameter_meta {
    se: "single-end read files"
    pe: "paired-end read files"
    ss: "input reads are strand-specific"
    outdir: "output directory [/transabyss_2.0.1_assembly]"
    name: "assembly name [transabyss] (ie. output assembly:\\n'transabyss-final.fa')"
    stage: "run up to the specified stage [final]"
    length: "minimum output sequence length [100]"
    cleanup: "level of clean-up of intermediate files [1]"
    threads: "number of threads ('j' in abyss-pe) [1]"
    mpi: "number of MPI processes ('np' in abyss-pe) [0]"
    km_er: "k-mer size [32]"
    cov: "minimum mean k-mer coverage of a unitig [2]"
    eros: "minimum erosion k-mer coverage [c]"
    s_eros: "minimum erosion k-mer coverage per strand [0]"
    q_ends: "minimum base quality on 5' and 3' ends of a read [3]"
    q_all: "minimum base quality throughout a read"
    pairs: "minimum number of pairs for building contigs [2]"
    seed: "minimum unitig size for building contigs [k]"
    g_sim: "maximum iterations of graph simplification [2]"
    in_del: "indel size tolerance [1]"
    island: "minimum length of island unitigs [0]"
    use_blat: "use BLAT alignments to remove redundant sequences."
    pid: "minimum percent sequence identity of redundant\\nsequences [0.95]"
    walk: "percentage of mean k-mer coverage of seed for path-\\nwalking [0.05]"
    no_ref: "do not include reference paths in final assembly"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}