version 1.0

task Virulign {
  input {
    Boolean? export_kind
    Boolean? export_alphabet
    Boolean? export_with_insertions
    Boolean? export_reference_sequence
    Boolean? progress
    Int? threads
    String? reference_dot_fast_a
    String? orf_description_dot_xml
    String sequences_dot_fast_a
  }
  command <<<
    virulign \
      ~{reference_dot_fast_a} \
      ~{orf_description_dot_xml} \
      ~{sequences_dot_fast_a} \
      ~{if (export_kind) then "--exportKind" else ""} \
      ~{if (export_alphabet) then "--exportAlphabet" else ""} \
      ~{if (export_with_insertions) then "--exportWithInsertions" else ""} \
      ~{if (export_reference_sequence) then "--exportReferenceSequence" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/virulign:1.1.1--hc9558a2_0"
  }
  parameter_meta {
    export_kind: "[Mutations PairwiseAlignments GlobalAlignment PositionTable MutationTable]"
    export_alphabet: "[AminoAcids Nucleotides]"
    export_with_insertions: "[yes no]"
    export_reference_sequence: "[no yes]"
    progress: "[no yes]"
    threads: "=>1 [default: all cpus available]"
    reference_dot_fast_a: ""
    orf_description_dot_xml: ""
    sequences_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}