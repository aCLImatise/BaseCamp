version 1.0

task Svmsubsetpy {
  input {
    Int? method_selection_default
  }
  command <<<
    svm_subset_py \
      ~{if defined(method_selection_default) then ("-s " +  '"' + method_selection_default + '"') else ""}
  >>>
  parameter_meta {
    method_selection_default: ": method of selection (default 0)\\n0 -- stratified selection (classification only)\\n1 -- random selection"
  }
  output {
    File out_stdout = stdout()
  }
}