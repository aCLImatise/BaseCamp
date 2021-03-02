version 1.0

task AugurAlign {
  input {
    Array[String] sequences
    File? output_file_default
    Int? n_threads
    String? method
    String? reference_name
    File? reference_sequence
    Boolean? remove_reference
    Boolean? fill_gaps
    Int? existing_alignment
    Boolean? debug
  }
  command <<<
    augur align \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(reference_name) then ("--reference-name " +  '"' + reference_name + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if (remove_reference) then "--remove-reference" else ""} \
      ~{if (fill_gaps) then "--fill-gaps" else ""} \
      ~{if defined(existing_alignment) then ("--existing-alignment " +  '"' + existing_alignment + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    sequences: "sequences to align (default: None)"
    output_file_default: "output file (default: alignment.fasta)"
    n_threads: "number of threads to use; specifying the value 'auto'\\nwill cause the number of available CPU cores on your\\nsystem, if determinable, to be used (default: 1)"
    method: "alignment program to use (default: mafft)"
    reference_name: "strip insertions relative to reference sequence; use\\nif the reference is already in the input sequences\\n(default: None)"
    reference_sequence: "Add this reference sequence to the dataset & strip\\ninsertions relative to this. Use if the reference is\\nNOT already in the input sequences (default: None)"
    remove_reference: "remove reference sequence from the alignment (default:\\nFalse)"
    fill_gaps: "If gaps represent missing data rather than true\\nindels, replace by N after aligning. (default: False)"
    existing_alignment: "An existing alignment to which the sequences will be\\nadded. The ouput alignment will be the same length as\\nthis existing alignment. (default: False)"
    debug: "Produce extra files (e.g. pre- and post-aligner files)\\nwhich can help with debugging poor alignments.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}