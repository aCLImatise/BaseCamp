version 1.0

task AlignmentToolsCompareErrorType {
  input {
    String? stem
    String compare_error_type
    String ref_nucl
  }
  command <<<
    AlignmentTools compare-error-type \
      ~{compare_error_type} \
      ~{ref_nucl} \
      ~{if defined(stem) then ("--stem " +  '"' + stem + '"') else ""}
  >>>
  parameter_meta {
    stem: "Output stem (default <query_nucl.fasta>)"
    compare_error_type: ""
    ref_nucl: ""
  }
}