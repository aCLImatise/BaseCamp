version 1.0

task Pbhoover {
  input {
    Boolean? consensus
    File? input_cmph_file
    File? output_vcf_file
    File? reference
    Int? nproc
    Int? chunksize
    Directory? tempdir
    Boolean? debug
  }
  command <<<
    pbhoover \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(input_cmph_file) then ("--input " +  '"' + input_cmph_file + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    consensus: "Call consensus (output all positions to VCF)"
    input_cmph_file: "Input cmp.h5 file"
    output_vcf_file: "Output VCF file name, stdout by default"
    reference: "Reference FASTA file for indel normalization"
    nproc: "number of processors to be used, uses all available by\\ndefault"
    chunksize: "Genome chunk size used for parallelizaton, 5000 by\\ndefault"
    tempdir: "Temporary directory for analysis. Current directory is\\ndefault"
    debug: "Flag for debugging purposes. Writes more information\\nto log\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}