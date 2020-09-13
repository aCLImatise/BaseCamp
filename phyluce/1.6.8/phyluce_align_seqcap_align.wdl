version 1.0

task PhyluceAlignSeqcapAlign {
  input {
    File? fast_a
    Directory? directory_store_resultingalignments
    Int? tax_a
    String? aligner
    String? output_format
    String? verbosity
    File? log_path
    Boolean? incomplete_matrix
    Boolean? no_trim
    Int? window
    Float? proportion
    Float? threshold
    Int? max_divergence
    Int? min_length
    Boolean? ambiguous
    Int? cores
  }
  command <<<
    phyluce_align_seqcap_align \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(directory_store_resultingalignments) then ("--output " +  '"' + directory_store_resultingalignments + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (incomplete_matrix) then "--incomplete-matrix" else ""} \
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
    fast_a: "The file containing FASTA reads associated with\\ntargted loci from get_fastas_from_match_counts.py\\n(default: None)"
    directory_store_resultingalignments: "The directory in which to store the resulting\\nalignments. (default: None)"
    tax_a: "Number of taxa expected in each alignment. (default:\\nNone)"
    aligner: "The alignment engine to use. (default: mafft)"
    output_format: "The output alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    incomplete_matrix: "Allow alignments that do not contain all --taxa.\\n(default: False)"
    no_trim: "Align, but DO NOT trim alignments. (default: False)"
    window: "Sliding window size for trimming. (default: 20)"
    proportion: "The proportion of taxa required to have sequence at\\nalignment ends. (default: 0.65)"
    threshold: "The proportion of residues required across the window\\nin proportion of taxa. (default: 0.65)"
    max_divergence: "The max proportion of sequence divergence allowed\\nbetween any row of the alignment and the alignment\\nconsensus. (default: 0.2)"
    min_length: "The minimum length of alignments to keep. (default:\\n100)"
    ambiguous: "Allow reads in alignments containing N-bases.\\n(default: False)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}