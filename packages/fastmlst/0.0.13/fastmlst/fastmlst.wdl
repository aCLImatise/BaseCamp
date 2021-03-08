version 1.0

task Fastmlst {
  input {
    Int? threads
    String? verbose
    String? separator
    String? scheme
    Boolean? scheme_list
    File? fast_a_output
    File? table_output
    Int? coverage
    Int? identity
    Boolean? update_mlst
    Boolean? fast_a_two_line
    Boolean? long_header
    Boolean? legacy
    File? novel
    String genomes
  }
  command <<<
    fastmlst \
      ~{genomes} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if (scheme_list) then "--scheme-list" else ""} \
      ~{if defined(fast_a_output) then ("--fastaoutput " +  '"' + fast_a_output + '"') else ""} \
      ~{if defined(table_output) then ("--tableoutput " +  '"' + table_output + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if (update_mlst) then "--update-mlst" else ""} \
      ~{if (fast_a_two_line) then "--fasta2line" else ""} \
      ~{if (long_header) then "--longheader" else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if defined(novel) then ("--novel " +  '"' + novel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastmlst:0.0.13--py_0"
  }
  parameter_meta {
    threads: "Number of threads to use (default 2)"
    verbose: "Verbose output level choices: [0, 1, 2]"
    separator: "Choose a character to use as a separator (default \\\",\\\")"
    scheme: "Set a scheme target (I am not dumb, let me choose a\\nscheme by myself!)"
    scheme_list: "Show all schemes supported"
    fast_a_output: "File name of the concatenated alleles output (default\\n\\\"\\\")"
    table_output: "File name of the MLST table output (default STDOUT)"
    coverage: "DNA %Cov to report high quality partial allele [?]\\n(default 99%)"
    identity: "DNA %Identity of full allelle to consider 'similar'\\n[~] (default 95%)"
    update_mlst: "Perform an update of the PubMLST database"
    fast_a_two_line: "The fasta files will be in fasta2line format"
    long_header: "If --longheader is invoked, the header of FASTA file\\ncontain a long description"
    legacy: "If --legacy is invoked, the csv reported contain the\\ngene name and the allele id in the row [adk(1),atpA(4)\\n,dxr(7),glyA(1),recA(1),sodA(3),tpi(3)]. This option\\nis only available when the --scheme is defined"
    novel: "File name of the novel alleles"
    genomes: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_fast_a_output = "${in_fast_a_output}"
    File out_table_output = "${in_table_output}"
  }
}