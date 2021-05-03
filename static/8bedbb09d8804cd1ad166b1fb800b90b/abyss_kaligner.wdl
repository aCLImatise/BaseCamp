version 1.0

task Abysskaligner {
  input {
    Int? kmer_size_alignment
    Int? section
    String? ignore_multimap
    Boolean? multimap
    Boolean? no_multimap
    File? threads
    Boolean? verbose
    Boolean? no_sam
    Boolean? sam
    Boolean? seq
    String k_aligner
    String var_11
  }
  command <<<
    abyss_kaligner \
      ~{k_aligner} \
      ~{var_11} \
      ~{if defined(kmer_size_alignment) then ("--kmer " +  '"' + kmer_size_alignment + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(ignore_multimap) then ("--ignore-multimap " +  '"' + ignore_multimap + '"') else ""} \
      ~{if (multimap) then "--multimap" else ""} \
      ~{if (no_multimap) then "--no-multimap" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_sam) then "--no-sam" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (seq) then "--seq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    kmer_size_alignment: "k-mer size and minimum alignment length"
    section: "/N     split the target into N sections and align\\nreads to section S [1/1]"
    ignore_multimap: "duplicate k-mer in the target\\n[default]"
    multimap: "allow duplicate k-mer in the target"
    no_multimap: "disallow duplicate k-mer in the target"
    threads: "use N threads [2] up to one per query file\\nor if N is 0 use one thread per query file"
    verbose: "display verbose output"
    no_sam: "output the results in KAligner format"
    sam: "output the results in SAM format"
    seq: "print the sequence with the alignments"
    k_aligner: ""
    var_11: ""
  }
  output {
    File out_stdout = stdout()
  }
}