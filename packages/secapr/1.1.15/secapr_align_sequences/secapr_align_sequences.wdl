version 1.0

task SecaprAlignSequences {
  input {
    File? sequences
    Directory? directory_store_resulting
    String? output_format
    Boolean? no_trim
    Int? window
    String? proportion
    String? threshold
    Int? max_divergence
    Int? min_length
    Boolean? ambiguous
    Int? cores
    String alignments_dot
  }
  command <<<
    secapr align_sequences \
      ~{alignments_dot} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(directory_store_resulting) then ("--output " +  '"' + directory_store_resulting + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(proportion) then ("--proportion " +  '"' + proportion + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(max_divergence) then ("--max-divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (ambiguous) then "--ambiguous" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    sequences: "The fasta file containing individual sequences for\\nseveral samples and loci"
    directory_store_resulting: "The directory in which to store the resulting"
    output_format: "The output alignment format."
    no_trim: "Align, but DO NOT trim alignments."
    window: "Sliding window size for trimming."
    proportion: "The proportion of taxa required to have sequence at\\nalignment ends."
    threshold: "The proportion of residues required across the window\\nin proportion of taxa."
    max_divergence: "The max proportion of sequence divergence allowed\\nbetween any row of the alignment and the alignment\\nconsensus."
    min_length: "The minimum length of alignments to keep."
    ambiguous: "Allow reads in alignments containing N-bases."
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n"
    alignments_dot: "--aligner {muscle,mafft}"
  }
  output {
    File out_stdout = stdout()
  }
}