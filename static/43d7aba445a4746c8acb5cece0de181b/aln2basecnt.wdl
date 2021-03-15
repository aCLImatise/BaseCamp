version 1.0

task Aln2basecnt {
  input {
    File? base_cnt
    File? coverage
    String? name
    String? alphabet
    File? jsonini__stats
  }
  command <<<
    aln2basecnt \
      ~{if defined(base_cnt) then ("--basecnt " +  '"' + base_cnt + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(jsonini__stats) then ("-s " +  '"' + jsonini__stats + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    base_cnt: "bases count table output file"
    coverage: "coverage table output file"
    name: "Patient/sample identifiers to use in coverage column\\ntitle instead of 'coverage'"
    alphabet: "alphabet to use"
    jsonini__stats: "/JSON/INI, --stats YAML/JSON/INI\\nfile to write stats to"
  }
  output {
    File out_stdout = stdout()
    File out_base_cnt = "${in_base_cnt}"
    File out_coverage = "${in_coverage}"
  }
}