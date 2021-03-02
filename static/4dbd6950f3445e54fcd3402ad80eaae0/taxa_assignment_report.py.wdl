version 1.0

task TaxaAssignmentReportpy {
  input {
    Boolean? verbose
    File? tax_a_depth
    Directory? output_dir
    String? assignment_method
    Int? min_confidence
    File? training_data_fp
    File? tax_a_mapping_fp
    File? fast_a_fp
  }
  command <<<
    taxa_assignment_report_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(tax_a_depth) then ("--taxa_depth " +  '"' + tax_a_depth + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(assignment_method) then ("--assignment_method " +  '"' + assignment_method + '"') else ""} \
      ~{if defined(min_confidence) then ("--min_confidence " +  '"' + min_confidence + '"') else ""} \
      ~{if defined(training_data_fp) then ("--training_data_fp " +  '"' + training_data_fp + '"') else ""} \
      ~{if defined(tax_a_mapping_fp) then ("--taxa_mapping_fp " +  '"' + tax_a_mapping_fp + '"') else ""} \
      ~{if defined(fast_a_fp) then ("--fasta_fp " +  '"' + fast_a_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    tax_a_depth: "Depth of taxonomy to test for accuracy.  Depth that\\nexceeds specifications in the taxonomy mapping file or\\nreport will be ignored [default: 3]"
    output_dir: "Specify output directory for reports, log. [default:\\n.]"
    assignment_method: "Taxonomic assignment method.  Currently only RDP\\nclassifier implemented. [default: rdp]"
    min_confidence: "Minimum confidence for taxonomic assignment.\\n[default: 0.8]"
    training_data_fp: "Training sequence data filepath for rdp classifier.\\n[default: none]"
    tax_a_mapping_fp: "Taxonomy mapping filepath [REQUIRED]"
    fast_a_fp: "Fasta sequence file. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}