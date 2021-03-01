version 1.0

task Clove {
  input {
    Int? algorithm_socratesdellydellycrestgustafbedpegridss
    File? coverage
    File? o
    String? perform_depth_check
  }
  command <<<
    clove \
      ~{if defined(algorithm_socratesdellydellycrestgustafbedpegridss) then ("-i " +  '"' + algorithm_socratesdellydellycrestgustafbedpegridss + '"') else ""} \
      ~{if defined(coverage) then ("-b " +  '"' + coverage + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(perform_depth_check) then ("-r " +  '"' + perform_depth_check + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    algorithm_socratesdellydellycrestgustafbedpegridss: "<algorithm (Socrates/Delly/Delly2/Crest/Gustaf/BEDPE/GRIDSS)>"
    coverage: "<coverage>"
    o: "[default: CLOVE.vcf]"
    perform_depth_check: "not perform read depth check. This option will lead all deletions and tandem\\nduplications to fail, but runs a lot faster. Use to get an idea about complex\\nvariants only.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}