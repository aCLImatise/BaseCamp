version 1.0

task Pizzly {
  input {
    Int? kmer_size_used
    Int? align_score
    Int? insert_size
    String? prefix_output_files
    String? gtf
    File? cache
    String? fast_a
    Boolean? ignore_protein
  }
  command <<<
    pizzly \
      ~{if defined(kmer_size_used) then ("-k " +  '"' + kmer_size_used + '"') else ""} \
      ~{if defined(align_score) then ("--align-score " +  '"' + align_score + '"') else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (ignore_protein) then "--ignore-protein" else ""}
  >>>
  parameter_meta {
    kmer_size_used: "k-mer size used in kallisto"
    align_score: "Maximum number of mismatches allowed (default: 2)"
    insert_size: "Maximum fragment size of library (default: 400)"
    prefix_output_files: "Prefix for output files"
    gtf: "Annotation in GTF format"
    cache: "File for caching annotation (created if not present, otherwise\\nreused from previous runs)"
    fast_a: "Fasta reference"
    ignore_protein: "Ignore any protein coding information in annotation"
  }
  output {
    File out_stdout = stdout()
  }
}