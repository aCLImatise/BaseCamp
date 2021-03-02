version 1.0

task Dshintersectbed {
  input {
    Boolean? a_input_file
    Boolean? b_input_file
    File? output_file
    Boolean? strategy
    String? args
  }
  command <<<
    dsh_intersect_bed \
      ~{args} \
      ~{if (a_input_file) then "--a-input-file" else ""} \
      ~{if (b_input_file) then "--b-input-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (strategy) then "--strategy" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_input_file: "[class java.io.File]  A input BED file, default stdin [optional]"
    b_input_file: "[class java.io.File]  B input BED file [required]"
    output_file: "[class java.io.File]  output BED file, default stdout [optional]"
    strategy: "[class java.lang.String]  strategy { range-list, range-set, centered-range-tree, r-tree, r-star-tree }, default range-set [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}