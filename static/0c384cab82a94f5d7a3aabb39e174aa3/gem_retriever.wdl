version 1.0

task GemRetriever {
  input {
    String? index
    String? defaultstdin
    String? defaultstdout
  }
  command <<<
    gem-retriever \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if defined(defaultstdout) then ("--output " +  '"' + defaultstdout + '"') else ""}
  >>>
  parameter_meta {
    index: "(GEM archive)"
    defaultstdin: "(default=stdin)"
    defaultstdout: "(default=stdout)"
  }
}