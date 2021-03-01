version 1.0

task ConvertQr {
  input {
    File? it
    File? ir
    File? name_write_sequences
    String? prefix
    Int? mf
    Int? length_sequences_have
    Boolean? translate_sequences_protein
  }
  command <<<
    convert_qr \
      ~{if defined(it) then ("--it " +  '"' + it + '"') else ""} \
      ~{if defined(ir) then ("--ir " +  '"' + ir + '"') else ""} \
      ~{if defined(name_write_sequences) then ("-o " +  '"' + name_write_sequences + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""} \
      ~{if defined(length_sequences_have) then ("-L " +  '"' + length_sequences_have + '"') else ""} \
      ~{if (translate_sequences_protein) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    it: "Input file from QuasiRecomb, usually 'quasispecies.fasta'\\nfor transmitter"
    ir: "Input file from QuasiRecomb, usually 'quasispecies.fasta'\\nfor recipient"
    name_write_sequences: "Name of output file to write sequences to"
    prefix: "Prefix to use in FASTA header (retains source prefixes if\\nnone provided)"
    mf: "Minimum frequency required for keeping sequence"
    length_sequences_have: "Length of sequences have to be EXACTLY L"
    translate_sequences_protein: "Translate sequences into protein sequences"
  }
  output {
    File out_stdout = stdout()
    File out_name_write_sequences = "${in_name_write_sequences}"
  }
}