version 1.0

task HydropathyCharge {
  input {
    File? input_files_fasta
    String? ot_put_prefix
    File? trans_file_legend
    String? index
    String? upstream_codon
    String? downstream_codon
    Int? table
  }
  command <<<
    hydropathyCharge \
      ~{if defined(input_files_fasta) then ("--input " +  '"' + input_files_fasta + '"') else ""} \
      ~{if defined(ot_put_prefix) then ("--otput_prefix " +  '"' + ot_put_prefix + '"') else ""} \
      ~{if defined(trans_file_legend) then ("--trans_file_legend " +  '"' + trans_file_legend + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(upstream_codon) then ("--upstream_codon " +  '"' + upstream_codon + '"') else ""} \
      ~{if defined(downstream_codon) then ("--downstream_codon " +  '"' + downstream_codon + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_files_fasta: "Input file(s) in fasta format. All files should be\\nsplit by comma e.g. 1.fasta,2.fasta,3.fasta[required]\\n. Note: input sequence must be cds sequences which\\ncould be generated by GetProteinCodingSequence.py."
    ot_put_prefix: "Prefix of output files.[required]"
    trans_file_legend: "The legend of each fasta files, comma split. e.g.\\n'condition1,condition2,condition3' [required]"
    index: "Input the hydropathy index or charge index of each\\namino acids."
    upstream_codon: "Upstream codon corresponding to start codon (codon\\nunit). While corresponding to stop codon, it is the\\ndownstream codon."
    downstream_codon: "Downstream codon corresponding to start codon (codon\\nunit). While corresponding to stop codon, it is the\\nupstream codon."
    table: "Which genetic code to use. default is the standard\\ncode.table = 1, is the standard table, ref: https://ww\\nw.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\\n"
  }
  output {
    File out_stdout = stdout()
  }
}