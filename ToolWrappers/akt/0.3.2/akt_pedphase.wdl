version 1.0

task AktPedphase {
  input {
    Boolean? pedigree
    File? output_file
    String? output_type
    Boolean? threads
    Boolean? exclude_chromosome
  }
  command <<<
    akt pedphase \
      ~{if (pedigree) then "--pedigree" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (exclude_chromosome) then "--exclude-chromosome" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pedigree: "pedigree information in plink .fam format"
    output_file: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    threads: "number of compression/decompression threads to use"
    exclude_chromosome: "leave these chromosomes unphased (unphased lines will still be in in output)  eg. -x chrM,chrY"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}