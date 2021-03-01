version 1.0

task PhandangoMapper {
  input {
    String? bwa
    Directory? tmp_prefix
    Boolean? use_filter_p
    String km_ers
    String reference
    String output_file
  }
  command <<<
    phandango_mapper \
      ~{km_ers} \
      ~{reference} \
      ~{output_file} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(tmp_prefix) then ("--tmp-prefix " +  '"' + tmp_prefix + '"') else ""} \
      ~{if (use_filter_p) then "--use-filter-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bwa: "Location of bwa executable [Default: bwa]"
    tmp_prefix: "Directory to store temporary files [Default: cwd]"
    use_filter_p: "Plot the unadjusted p-value [Default: lrt-p-value]"
    km_ers: "Kmers file, filtered output from SEER"
    reference: "Reference fasta file"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
  }
}