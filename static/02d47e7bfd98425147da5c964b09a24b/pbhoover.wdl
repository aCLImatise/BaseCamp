version 1.0

task Pbhoover {
  input {
    Boolean? consensus
    String? input_cmph_file
    String? output_vcf_file
    String? reference
    String? nproc
    String? chunksize
    String? tempdir
    Boolean? debug
  }
  command <<<
    pbhoover \
      ~{true="--consensus" false="" consensus} \
      ~{if defined(input_cmph_file) then ("--input " +  '"' + input_cmph_file + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    consensus: "Call consensus (output all positions to VCF)"
    input_cmph_file: "Input cmp.h5 file"
    output_vcf_file: "Output VCF file name, stdout by default"
    reference: "Reference FASTA file for indel normalization"
    nproc: "number of processors to be used, uses all available by default"
    chunksize: "Genome chunk size used for parallelizaton, 5000 by default"
    tempdir: "Temporary directory for analysis. Current directory is default"
    debug: "Flag for debugging purposes. Writes more information to log"
  }
}