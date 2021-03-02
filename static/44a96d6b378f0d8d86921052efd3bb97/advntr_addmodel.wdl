version 1.0

task AdvntrAddmodel {
  input {
    String? reference
    Int? chromosome
    Int? pattern
    Int? start
    Int? end
    String? gene
    String? annotation
    File? models
  }
  command <<<
    advntr addmodel \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/advntr:1.4.1--py27h76bc9d7_0"
  }
  parameter_meta {
    reference: "Reference genome"
    chromosome: "Chromosome (e.g. chr1)"
    pattern: "First repeating pattern of VNTR in forward (5' to 3') direction"
    start: "Start coordinate of VNTR in forward (5' to 3') direction"
    end: "End coordinate of VNTR in forward (5' to 3') direction"
    gene: "Gene name"
    annotation: "Annotation of VNTR region"
    models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
  }
  output {
    File out_stdout = stdout()
  }
}