version 1.0

task Anviselftest {
  input {
    String? suite
    File? output_dir
    Boolean? no_interactive
  }
  command <<<
    anvi_self_test \
      ~{if defined(suite) then ("--suite " +  '"' + suite + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (no_interactive) then "--no-interactive" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    suite: "A suite of component tests to execute. By default this\\nprogram will execute the mini test of anvi'o, which\\nwill help you to see if your computer and installation\\nis able to perform some of the most basic anvi'o\\noperations, such as generating an anvi'o contigs\\ndatabase, profiling BAM files, or starting an\\ninteractive interface. But you are welcome to execute\\ndifferent component tests. Here is a list of what is\\navailable to you: 'mini', 'metagenomics-full',\\n'pangenomics', 'interactive-interface', 'metabolism',\\n'alons-classifier', 'trnaseq' (default: mini)"
    output_dir: "If you declare an outuput dir, all your data will be\\nstored in there, instead of being stored in a\\ntemporary directroy to be deleted once the tests are\\ndone. This is particularly useful if you wish to play\\nwith general anvi'o output files (default: None)"
    no_interactive: "Don't show anything interactive (if possible).\\n(default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}