version 1.0

task MakeBatchForGetOrganelle.py {
  input {
    String? output_base_name
    String? other_arguments_marks
    Boolean? all
    Boolean? annotated
    Boolean? strict
    String mk_get_organelle_do_tpy
  }
  command <<<
    make_batch_for_get_organelle.py \
      ~{mk_get_organelle_do_tpy} \
      ~{if defined(output_base_name) then ("-o " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(other_arguments_marks) then ("-p " +  '"' + other_arguments_marks + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--annotated" false="" annotated} \
      ~{true="--strict" false="" strict}
  >>>
  parameter_meta {
    output_base_name: "output base name for each sample"
    other_arguments_marks: "Other arguments that get_organelle_from_reads.py would take.Use double quotation marks to include all the argumentsExample: \"-s plastome.fasta -a mitochondrial.fasta -F embplant_pt -w 105\""
    all: "Choose to make command for all samples including samples with results.Default: skip those with results."
    annotated: "Choose to make annotated command for skipped commands.Default: False."
    strict: "Choose to only search for the fastq with the same base name with the directory (*/*_1.fq). Default: relaxed searching."
    mk_get_organelle_do_tpy: ""
  }
}