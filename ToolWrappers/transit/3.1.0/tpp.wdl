version 1.0

task Tpp {
  input {
    String? replicon_ids
    File? var_output
    File? reads_two
    File? reads_one
    File? ref
    File? bwa
    String? optional
    String? args
  }
  command <<<
    tpp \
      ~{optional} \
      ~{args} \
      ~{if defined(replicon_ids) then ("-replicon-ids " +  '"' + replicon_ids + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""} \
      ~{if defined(reads_two) then ("-reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(reads_one) then ("-reads1 " +  '"' + reads_one + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(bwa) then ("-bwa " +  '"' + bwa + '"') else ""}
  >>>
  parameter_meta {
    replicon_ids: "# if multiple replicons/genomes/contigs/sequences were provided in -ref, give them names."
    var_output: ""
    reads_two: ""
    reads_one: ""
    ref: ""
    bwa: ""
    optional: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}