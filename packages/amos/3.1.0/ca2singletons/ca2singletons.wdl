version 1.0

task Ca2singletons {
  input {
    File? asm_file
    File? fasta_file_name
    File? frg_file
    Boolean? clear
    Boolean? contig
    Boolean? list
  }
  command <<<
    ca2singletons \
      ~{if defined(asm_file) then ("-i " +  '"' + asm_file + '"') else ""} \
      ~{if defined(fasta_file_name) then ("-o " +  '"' + fasta_file_name + '"') else ""} \
      ~{if defined(frg_file) then ("-f " +  '"' + frg_file + '"') else ""} \
      ~{if (clear) then "-clear" else ""} \
      ~{if (contig) then "-contig" else ""} \
      ~{if (list) then "-list" else ""}
  >>>
  parameter_meta {
    asm_file: ".asm file"
    fasta_file_name: ".fasta file name"
    frg_file: ".frg file"
    clear: "outputs just the clear range of the singletons"
    contig: "outputs singletons in TIGR .contig format"
    list: "outputs a list of the singleton names"
  }
  output {
    File out_stdout = stdout()
  }
}