version 1.0

task FilterGffValues {
  input {
    String? str_eq
    String? str_in
    String? num_eq
    String? num_ge
    String? num_le
    String? num_gt
    String? num_lt
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    filter-gff values \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(str_eq) then ("--str-eq " +  '"' + str_eq + '"') else ""} \
      ~{if defined(str_in) then ("--str-in " +  '"' + str_in + '"') else ""} \
      ~{if defined(num_eq) then ("--num-eq " +  '"' + num_eq + '"') else ""} \
      ~{if defined(num_ge) then ("--num-ge " +  '"' + num_ge + '"') else ""} \
      ~{if defined(num_le) then ("--num-le " +  '"' + num_le + '"') else ""} \
      ~{if defined(num_gt) then ("--num-gt " +  '"' + num_gt + '"') else ""} \
      ~{if defined(num_lt) then ("--num-lt " +  '"' + num_lt + '"') else ""} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    str_eq: "filter by custom key:value, if the argument is 'key:value' the annotation is kept if it contains an attribute 'key' whose value is exactly 'value' as a string"
    str_in: "Same as '--str-eq' but 'value' is contained in the attribute"
    num_eq: "Same as '--str-eq' but 'value' is a number which is equal or greater than"
    num_ge: "Same as '--str-eq' but 'value' is a number which is equal or greater than"
    num_le: "Same as '--num-ge' but 'value' is a number which is equal or less than"
    num_gt: "Same as '--str-eq' but 'value' is a number which is greater than"
    num_lt: "Same as '--num-ge' but 'value' is a number which is less than"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}