version 1.0

task Cdssubgraphs {
  input {
    Directory? output_folder
    File? part_desc
    File? part_seq
    String? graph
    File? cds_len_est
    Int? kmer_length_use
    Int? threads
    Directory? tmpdir
  }
  command <<<
    cds_subgraphs \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(part_desc) then ("--part-desc " +  '"' + part_desc + '"') else ""} \
      ~{if defined(part_seq) then ("--part-seq " +  '"' + part_seq + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(cds_len_est) then ("--cds-len-est " +  '"' + cds_len_est + '"') else ""} \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    output_folder: "output folder to use for GFA files"
    part_desc: "file with partial genes description (.gff)"
    part_seq: "file with partial genes sequences (.fasta)"
    graph: "In GFA (ending with .gfa) or prefix to SPAdes graph pack"
    cds_len_est: "file with cds length estimamtes"
    kmer_length_use: "k-mer length to use"
    threads: "# of threads to use (default: max_threads / 2)"
    tmpdir: "scratch directory to use (default: <outdir>/tmp)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}