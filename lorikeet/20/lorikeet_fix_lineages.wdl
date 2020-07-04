version 1.0

task LorikeetFixLineages {
  input {
    String? distance
    String? fraction
    String? jar
    String java
    String fix_lineages
  }
  command <<<
    lorikeet fix-lineages \
      ~{java} \
      ~{fix_lineages} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    distance: "Maximum distance to consider closest neighbors. [Default=500]"
    fraction: "Fraction of closest neighbors that need to agree to perform change. [Default=0.6]"
    jar: ""
    java: ""
    fix_lineages: ""
  }
}