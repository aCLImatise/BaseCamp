version 1.0

task SgaScaffold {
  input {
    Boolean? verbose
    File? pe
    File? mate_pair
    Int? min_length
    File? as_qg_file
    File? a_statistic_file
    Float? unique_a_stat
    Float? min_copy_number
    Int? max_sv_size
    File? outfile
    Boolean? remove_conflicting
    Boolean? strict
    String scaffold
  }
  command <<<
    sga scaffold \
      ~{scaffold} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(pe) then ("--pe " +  '"' + pe + '"') else ""} \
      ~{if defined(mate_pair) then ("--mate-pair " +  '"' + mate_pair + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(as_qg_file) then ("--asqg-file " +  '"' + as_qg_file + '"') else ""} \
      ~{if defined(a_statistic_file) then ("--astatistic-file " +  '"' + a_statistic_file + '"') else ""} \
      ~{if defined(unique_a_stat) then ("--unique-astat " +  '"' + unique_a_stat + '"') else ""} \
      ~{if defined(min_copy_number) then ("--min-copy-number " +  '"' + min_copy_number + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max-sv-size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (remove_conflicting) then "--remove-conflicting" else ""} \
      ~{if (strict) then "--strict" else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    pe: "load links derived from paired-end (short insert) libraries from FILE"
    mate_pair: "load links derived from mate-pair (long insert) libraries from FILE"
    min_length: "only use contigs at least N bp in length to build scaffolds (default: no minimun)."
    as_qg_file: "optionally load the sequence graph from FILE"
    a_statistic_file: "load Myers' A-statistic values from FILE. This is used to\\ndetermine unique and repetitive contigs with the -u/--unique-astat\\nand -r/--repeat-astat parameters (required)"
    unique_a_stat: "Contigs with an a-statitic value about FLOAT will be considered unique (default: 20.0)"
    min_copy_number: "remove vertices with estimated copy number less than FLOAT (default: 0.5f)"
    max_sv_size: "collapse heterozygous structural variation if the event size is less than N (default: 0)"
    outfile: "write the scaffolds to FILE (default: CONTIGSFILE.scaf"
    remove_conflicting: "if two contigs have multiple distance estimates between them and they do not agree, break the scaffold\\nat this point"
    strict: "perform strict consistency checks on the scaffold links. If a vertex X has multiple edges, a path will\\nbe searched for that contains every vertex linked to X. If no such path can be found, the edge of X are removed.\\nThis builds very conservative scaffolds that should be highly accurate."
    scaffold: ""
  }
  output {
    File out_stdout = stdout()
  }
}