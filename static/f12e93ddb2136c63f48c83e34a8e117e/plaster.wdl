version 1.0

task Plaster {
  input {
    Boolean? realign
    Boolean? align_only
    String? template
    File? output_pangenome_doesnot
    Directory? work_dir
    Int? threads
    Int? length
    Int? max_frag_len
    String? id_cut_off
    Boolean? verbose
    String input_files
  }
  command <<<
    plaster \
      ~{input_files} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (align_only) then "--align-only" else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(output_pangenome_doesnot) then ("--output " +  '"' + output_pangenome_doesnot + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_frag_len) then ("--max-frag-len " +  '"' + max_frag_len + '"') else ""} \
      ~{if defined(id_cut_off) then ("--id-cutoff " +  '"' + id_cut_off + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pan-plaster:1.1.2--0"
  }
  parameter_meta {
    realign: "Realign all input genomes to the resulting pangenome\\nto get a more accurate fragment mapping"
    align_only: "Used with --template. Does not append to pangenome,\\njust produces tsv alignment."
    template: "seed genome to use"
    output_pangenome_doesnot: "output pan-genome fasta and metadata file stem (does\\nnot include file extension)"
    work_dir: "Directory to save nucmer outputs."
    threads: "Number of threads"
    length: "Minimum length of sequence attached to the pan-genome"
    max_frag_len: "Maximum fragment length"
    id_cut_off: "Minimum identity to record alignment in metadata"
    verbose: "Print verbose output"
    input_files: "a list of input fasta file names. If there is one\\nfile, it is assumed that this file contains a list of\\ninput files separated by a newline"
  }
  output {
    File out_stdout = stdout()
    File out_output_pangenome_doesnot = "${in_output_pangenome_doesnot}"
  }
}