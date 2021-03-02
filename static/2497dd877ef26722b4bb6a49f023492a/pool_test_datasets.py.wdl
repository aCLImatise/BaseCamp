version 1.0

task PoolTestDatasetspy {
  input {
    Boolean? verbose
    File? field_order
    String? pool_by
    Directory? trait_table_dir
    Directory? exp_trait_table_dir
    Directory? output_dir
  }
  command <<<
    pool_test_datasets_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(field_order) then ("--field_order " +  '"' + field_order + '"') else ""} \
      ~{if defined(pool_by) then ("--pool_by " +  '"' + pool_by + '"') else ""} \
      ~{if defined(trait_table_dir) then ("--trait_table_dir " +  '"' + trait_table_dir + '"') else ""} \
      ~{if defined(exp_trait_table_dir) then ("--exp_trait_table_dir " +  '"' + exp_trait_table_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    field_order: "pass comma-separated categories, in the order they\\nappear in file names.   Categories are \\\"file_type\\\",\\\"pr\\nediction_method\\\",\\\"weighting_method\\\",\\\"holdout_method\\\"\\n(randomization vs. holdout),\\\"distance\\\",and \\\"organism\\\".\\nExample:  \\\"-f file_type,test_method,asr_method\\nspecifies that files will be in the form:\\npredict_traits--distance_exclusion--wagner.  Any\\nunspecified values are set to \\\"not_specified\\\".\\n[default: file_type,prediction_method,weighting_method\\n,holdout_method,distance,organism]"
    pool_by: "pass comma-separated categories to pool results by\\nthose metadata categories. Valid categories are:\\nholdout_method,\\nprediction_method,weighting_method,distance and\\norganism. For example, pass \\\"distance\\\" to output\\nresults pooled by holdout distance in addition to\\nholdout method and prediction method  [default: False]"
    trait_table_dir: "the input trait table directory (files in biom format)\\n[REQUIRED]"
    exp_trait_table_dir: "the input expected trait table directory (files in\\nbiom format) [REQUIRED]"
    output_dir: "the output directory [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}