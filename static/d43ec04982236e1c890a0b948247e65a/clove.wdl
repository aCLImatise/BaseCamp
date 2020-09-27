version 1.0

task Clove {
  input {
    Int? algorithm_socratesdellydellycrestgustafbedpegridss
    File? coverage
    String? perform_read_check
  }
  command <<<
    clove \
      ~{if defined(algorithm_socratesdellydellycrestgustafbedpegridss) then ("-i " +  '"' + algorithm_socratesdellydellycrestgustafbedpegridss + '"') else ""} \
      ~{if defined(coverage) then ("-b " +  '"' + coverage + '"') else ""} \
      ~{if defined(perform_read_check) then ("-r " +  '"' + perform_read_check + '"') else ""}
  >>>
  parameter_meta {
    algorithm_socratesdellydellycrestgustafbedpegridss: "<algorithm (Socrates/Delly/Delly2/Crest/Gustaf/BEDPE/GRIDSS)>"
    coverage: "<coverage>"
    perform_read_check: "not perform read depth check. This option will lead all deletions and tandem\\nduplications to fail, but runs a lot faster. Use to get an idea about complex\\nvariants only.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}