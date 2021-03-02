version 1.0

task FastqTrimPolyAt {
  input {
    File? fastq_optional_gzipped
    File? ofile
    Int? min_poly_at_len
    Int? min_len
    String? outfile
    String? optional
    String? parameters
  }
  command <<<
    fastq_trim_poly_at \
      ~{optional} \
      ~{parameters} \
      ~{if defined(fastq_optional_gzipped) then ("--file " +  '"' + fastq_optional_gzipped + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(min_poly_at_len) then ("--min_poly_at_len " +  '"' + min_poly_at_len + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastq_optional_gzipped: ":fastq (optional gzipped) file name"
    ofile: ": fastq file name where the processed reads will be written"
    min_poly_at_len: ": minimum length of poly-A|T sequence to remove."
    min_len: ": minimum read length."
    outfile: ""
    optional: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}