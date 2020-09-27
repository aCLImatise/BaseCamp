version 1.0

task Mvp {
  input {
    String? outfile
    String? reference
    File? motif_file
    String? motif_list
    String? sequence_type
  }
  command <<<
    mvp \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(motif_file) then ("--motif-file " +  '"' + motif_file + '"') else ""} \
      ~{if defined(motif_list) then ("--motif-list " +  '"' + motif_list + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence-type " +  '"' + sequence_type + '"') else ""}
  >>>
  parameter_meta {
    outfile: "results table (default: stdout)"
    reference: "reference sequence in fasta format"
    motif_file: "file containing a list of motifs to check"
    motif_list: "a comma-delimited string of motifs to check"
    sequence_type: "DNA or amino acid (default: dna)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}