version 1.0

task DshIntersectBed {
  input {
    Boolean? a_input_file
    Boolean? b_input_file
    Boolean? output_file
    Boolean? strategy
    String? args
  }
  command <<<
    dsh-intersect-bed \
      ~{args} \
      ~{true="--a-input-file" false="" a_input_file} \
      ~{true="--b-input-file" false="" b_input_file} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--strategy" false="" strategy}
  >>>
  parameter_meta {
    a_input_file: "[class java.io.File]  A input BED file, default stdin [optional]"
    b_input_file: "[class java.io.File]  B input BED file [required]"
    output_file: "[class java.io.File]  output BED file, default stdout [optional]"
    strategy: "[class java.lang.String]  strategy { range-list, range-set, centered-range-tree, r-tree, r-star-tree }, default range-set [optional]"
    args: ""
  }
}