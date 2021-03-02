version 1.0

task Ganongetseqinfosh {
  input {
    Boolean? input_file_one
    Boolean? list_accesions_comma
    Boolean? _ncbiapikey
    String? entries_even_nothing
    Int? sequence_length_taxid
    String? assembly_accession_latest
    String? assembly_name
    String? sequence_accession_unavailable
  }
  command <<<
    ganon_get_seq_info_sh \
      ~{if (input_file_one) then "-i" else ""} \
      ~{if (list_accesions_comma) then "-l" else ""} \
      ~{if (_ncbiapikey) then "-n" else ""} \
      ~{if defined(entries_even_nothing) then ("-k " +  '"' + entries_even_nothing + '"') else ""} \
      ~{if defined(sequence_length_taxid) then ("-s " +  '"' + sequence_length_taxid + '"') else ""} \
      ~{if defined(assembly_accession_latest) then ("-a " +  '"' + assembly_accession_latest + '"') else ""} \
      ~{if defined(assembly_name) then ("-m " +  '"' + assembly_name + '"') else ""} \
      ~{if defined(sequence_accession_unavailable) then ("-r " +  '"' + sequence_accession_unavailable + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    input_file_one: "[str] input file with one accessions per line (use - to read from STDIN)"
    list_accesions_comma: "[str] list of accesions (comma separated)"
    _ncbiapikey: "[str] ncbi_api_key"
    entries_even_nothing: "all entries even if nothing is retrieved (report \\\"na\\\")"
    sequence_length_taxid: "sequence length and taxid requests"
    assembly_accession_latest: "assembly accession (only latest for the sequence accession)"
    assembly_name: "assembly name"
    sequence_accession_unavailable: "sequence accession for unavailable asssembly accessions/names (by default report \\\"na\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}