version 1.0

task MakeBatchForGetOrganellepy {
  input {
    String? output_base_name
    Int? other_arguments_wouldtakeuse
    Boolean? all
    Boolean? annotated
    Boolean? strict
    String sample_dirs
  }
  command <<<
    make_batch_for_get_organelle_py \
      ~{sample_dirs} \
      ~{if defined(output_base_name) then ("-o " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(other_arguments_wouldtakeuse) then ("-p " +  '"' + other_arguments_wouldtakeuse + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (annotated) then "--annotated" else ""} \
      ~{if (strict) then "--strict" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    output_base_name: "output base name for each sample"
    other_arguments_wouldtakeuse: "Other arguments that get_organelle_from_reads.py would\\ntake.Use double quotation marks to include all the\\nargumentsExample: \\\"-s plastome.fasta -a\\nmitochondrial.fasta -F embplant_pt -w 105\\\""
    all: "Choose to make command for all samples including samples\\nwith results.Default: skip those with results."
    annotated: "Choose to make annotated command for skipped\\ncommands.Default: False."
    strict: "Choose to only search for the fastq with the same base\\nname with the directory (*/*_1.fq). Default: relaxed\\nsearching.\\n"
    sample_dirs: "Input a list of folders (split the files by spaces).\\nEach folder should include a/several pair(s) of fastq\\nfiles."
  }
  output {
    File out_stdout = stdout()
  }
}