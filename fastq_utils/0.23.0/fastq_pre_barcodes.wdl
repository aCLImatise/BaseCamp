version 1.0

task FastqPreBarcodes {
  input {
    Boolean? one_zero_x
    String? read_one
    String? outfile_one
    String? optional
    String? parameters
  }
  command <<<
    fastq_pre_barcodes \
      ~{optional} \
      ~{parameters} \
      ~{true="--10x" false="" one_zero_x} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(outfile_one) then ("--outfile1 " +  '"' + outfile_one + '"') else ""}
  >>>
  parameter_meta {
    one_zero_x: ": use 10X UMI tags (UB and UY) instead of the default tags defined in the SAM specification"
    read_one: ""
    outfile_one: ""
    optional: ""
    parameters: ""
  }
}