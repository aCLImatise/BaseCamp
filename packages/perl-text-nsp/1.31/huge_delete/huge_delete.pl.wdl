version 1.0

task Hugedeletepl {
  input {
    String? remove
    String? u_remove
    String? frequency
    String? u_frequency
    String source
    String destination
  }
  command <<<
    huge_delete_pl \
      ~{source} \
      ~{destination} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(u_remove) then ("--uremove " +  '"' + u_remove + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(u_frequency) then ("--ufrequency " +  '"' + u_frequency + '"') else ""}
  >>>
  parameter_meta {
    remove: "Bigrams with counts < L will be removed from sample."
    u_remove: "Bigrams with counts > L will be removed from sample."
    frequency: "Bigrams with counts < F will not be displayed."
    u_frequency: "Bigrams with counts > F will not be displayed."
    source: ""
    destination: ""
  }
  output {
    File out_stdout = stdout()
  }
}