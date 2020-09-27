version 1.0

task FastaRemove {
  input {
    Boolean? fast_a
    Boolean? trim_from_space
    Boolean? int_remove_sequence_bases
    Boolean? int_remove_sequence_nscontiglenis
    Boolean? oases
    Boolean? scaffolds
    Boolean? log
  }
  command <<<
    fasta_remove \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (trim_from_space) then "-trim_from_space" else ""} \
      ~{if (int_remove_sequence_bases) then "-l" else ""} \
      ~{if (int_remove_sequence_nscontiglenis) then "-f" else ""} \
      ~{if (oases) then "-oases" else ""} \
      ~{if (scaffolds) then "-scaffolds" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  parameter_meta {
    fast_a: "(string)                  Fasta file as input."
    trim_from_space: "trims name at first space"
    int_remove_sequence_bases: "(int)                    remove sequence if bases (non Ns)\\nare >= set value"
    int_remove_sequence_nscontiglenis: "(int)                    remove sequence if Ns/Contig_len\\nis > set value"
    oases: "Format the oases output"
    scaffolds: "It consider oases scaffolds. Contigs\\nwill be separated by 10 Ns."
    log: "(string)                 log file."
  }
  output {
    File out_stdout = stdout()
  }
}