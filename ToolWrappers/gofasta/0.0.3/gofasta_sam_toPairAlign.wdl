version 1.0

task GofastaSamToPairAlign {
  input {
    String? genbank
    String? feature
    File? out_path
    Boolean? omit_reference
    Boolean? skip_insertions
    File? reference
    String? sam_file
    Int? threads
  }
  command <<<
    gofasta sam toPairAlign \
      ~{if defined(genbank) then ("--genbank " +  '"' + genbank + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(out_path) then ("--outpath " +  '"' + out_path + '"') else ""} \
      ~{if (omit_reference) then "--omit-reference" else ""} \
      ~{if (skip_insertions) then "--skip-insertions" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sam_file) then ("--samfile " +  '"' + sam_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gofasta:0.0.3--0"
  }
  parameter_meta {
    genbank: "Genbank format annotation of a sequence in the same coordinates as the alignment"
    feature: "Feature to output (choose one of: gene, CDS). If none is specified, will output the entire alignment"
    out_path: "Output path where fasta files will be written"
    omit_reference: "Omit the reference sequences from the output alignments"
    skip_insertions: "Skip insertions relative to the reference"
    reference: "Reference fasta file used to generate the sam file"
    sam_file: "samfile to read. If none is specified, will read from stdin"
    threads: "Number of threads to use (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}