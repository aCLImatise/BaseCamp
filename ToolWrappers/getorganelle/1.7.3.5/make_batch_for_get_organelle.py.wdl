version 1.0

task MakeBatchForGetOrganellepy {
  input {
    String? output_base_name
    Int? other_arguments_wouldtakeuse
    Boolean? all
    Boolean? annotated
    Boolean? strict
    String mk_get_organelle_do_tpy
  }
  command <<<
    make_batch_for_get_organelle_py \
      ~{mk_get_organelle_do_tpy} \
      ~{if defined(output_base_name) then ("-o " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(other_arguments_wouldtakeuse) then ("-p " +  '"' + other_arguments_wouldtakeuse + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (annotated) then "--annotated" else ""} \
      ~{if (strict) then "--strict" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    output_base_name: "output base name for each sample"
    other_arguments_wouldtakeuse: "Other arguments that get_organelle_from_reads.py would\\ntake.Use double quotation marks to include all the\\nargumentsExample: \\\"-s plastome.fasta -a\\nmitochondrial.fasta -F embplant_pt -w 105\\\""
    all: "Choose to make command for all samples including samples\\nwith results.Default: skip those with results."
    annotated: "Choose to make annotated command for skipped\\ncommands.Default: False."
    strict: "Choose to only search for the fastq with the same base\\nname with the directory (*/*_1.fq). Default: relaxed\\nsearching.\\n"
    mk_get_organelle_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}