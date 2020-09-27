version 1.0

task MykrobePredict {
  input {
    Boolean? keep_tmp
    String? tmp
    String? k
    String sample
    String species
  }
  command <<<
    mykrobe predict \
      ~{sample} \
      ~{species} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    keep_tmp: ""
    tmp: ""
    k: ""
    sample: "sample id"
    species: "species"
  }
  output {
    File out_stdout = stdout()
  }
}