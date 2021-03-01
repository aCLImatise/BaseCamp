version 1.0

task Ca2ta {
  input {
    String? select
    Boolean? contigs
    Boolean? no_fast_a
    Boolean? just_fast_a
    String? output_prefix
    Boolean? no_names
    Boolean? check
    Boolean? min_seq
    Boolean? filter
    Boolean? no_qual
    Boolean? mates
  }
  command <<<
    ca2ta \
      ~{if defined(select) then ("-select " +  '"' + select + '"') else ""} \
      ~{if (contigs) then "-contigs" else ""} \
      ~{if (no_fast_a) then "-nofasta" else ""} \
      ~{if (just_fast_a) then "-justfasta" else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if (no_names) then "-nonames" else ""} \
      ~{if (check) then "-check" else ""} \
      ~{if (min_seq) then "-minseq" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (no_qual) then "-noqual" else ""} \
      ~{if (mates) then "-mates" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    select: "Only performs this operation for contigs and unitigs\\nspecified in fname"
    contigs: "Does not report unitigs in .tasm"
    no_fast_a: "Do not create .fasta output"
    just_fast_a: "Only create .fasta output"
    output_prefix: "Output prefix"
    no_names: "Uses Ids rather than trying to figure out seqnames"
    check: "Prints out those seqnames that are shorter than MINSEQ"
    min_seq: "sets MINSEQ.  Default is 64"
    filter: "filters the .frg file for sequences shorter than MINSEQ"
    no_qual: "doesnt create .qual file"
    mates: "creates a .mates file indicating which sequences are mates"
  }
  output {
    File out_stdout = stdout()
  }
}