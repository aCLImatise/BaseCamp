version 1.0

task RiboSwap {
  input {
    Directory? output_directory_default
    File? verbosity
    String de_novo_file
    String de_fere_novo_file
    String bad_contig
    String good_contigs
  }
  command <<<
    ribo swap \
      ~{de_novo_file} \
      ~{de_fere_novo_file} \
      ~{bad_contig} \
      ~{good_contigs} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    de_novo_file: "multifasta containing de novo contigs"
    de_fere_novo_file: "multifasta containing de fere novo contigs"
    bad_contig: "name of the bad contig"
    good_contigs: "colon separated good contigs for replacement"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_verbosity = "${in_verbosity}"
  }
}