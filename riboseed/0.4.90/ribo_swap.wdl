version 1.0

task RiboSwap {
  input {
    String? output_directory_default
    String? verbosity
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
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    de_novo_file: "multifasta containing de novo contigs"
    de_fere_novo_file: "multifasta containing de fere novo contigs"
    bad_contig: "name of the bad contig"
    good_contigs: "colon separated good contigs for replacement"
  }
}