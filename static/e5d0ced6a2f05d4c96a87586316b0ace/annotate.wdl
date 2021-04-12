version 1.0

task Annotate {
  input {
    File? kegg
    File? network
    Int? pval
    Directory? cpu_cores_default
  }
  command <<<
    annotate \
      ~{if defined(kegg) then ("--kegg " +  '"' + kegg + '"') else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(cpu_cores_default) then ("--output " +  '"' + cpu_cores_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    kegg: "(if the -g/--go is specified, the -k/--kegg are ignored)"
    network: "(if -n is specified, the -m is ignored)"
    pval: "p value cutoff (default: 0.05)"
    cpu_cores_default: "cpu cores (default: 2)"
  }
  output {
    File out_stdout = stdout()
    Directory out_cpu_cores_default = "${in_cpu_cores_default}"
  }
}