version 1.0

task FiltergffValues {
  input {
    String? verbose
    String? str_in
    Int? num_eq
    Int? num_ge
    Int? num_le
    Int? num_gt
    Boolean? progress
    String than
  }
  command <<<
    filter_gff values \
      ~{than} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(str_in) then ("--str-in " +  '"' + str_in + '"') else ""} \
      ~{if defined(num_eq) then ("--num-eq " +  '"' + num_eq + '"') else ""} \
      ~{if defined(num_ge) then ("--num-ge " +  '"' + num_ge + '"') else ""} \
      ~{if defined(num_le) then ("--num-le " +  '"' + num_le + '"') else ""} \
      ~{if defined(num_gt) then ("--num-gt " +  '"' + num_gt + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "filter by custom key:value, if the argument is 'key:value'\\nthe annotation is kept if it contains an attribute 'key'\\nwhose value is exactly 'value' as a string"
    str_in: "Same as '--str-eq' but 'value' is contained in the attribute"
    num_eq: "Same as '--str-eq' but 'value' is a number which is equal or\\ngreater than"
    num_ge: "Same as '--str-eq' but 'value' is a number which is equal or\\ngreater than"
    num_le: "Same as '--num-ge' but 'value' is a number which is equal or\\nless than"
    num_gt: "Same as '--str-eq' but 'value' is a number which is greater"
    progress: "Shows Progress Bar"
    than: "--num-lt TEXT  Same as '--num-ge' but 'value' is a number which is less than"
  }
  output {
    File out_stdout = stdout()
  }
}