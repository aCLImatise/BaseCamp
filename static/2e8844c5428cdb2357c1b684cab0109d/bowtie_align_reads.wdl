version 1.0

task BowtieAlignReads.py {
  input {
    String? reference
    String? index
    String? temp
    String? allowed_mismatch
    String? multi_alignment
    String? processor
    Boolean? filter_unmapped
    String fast_an
  }
  command <<<
    bowtie-align-reads.py \
      ~{fast_an} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(allowed_mismatch) then ("--allowedmismatch " +  '"' + allowed_mismatch + '"') else ""} \
      ~{if defined(multi_alignment) then ("--multialignment " +  '"' + multi_alignment + '"') else ""} \
      ~{if defined(processor) then ("--processor " +  '"' + processor + '"') else ""} \
      ~{true="--filterunmapped" false="" filter_unmapped}
  >>>
  parameter_meta {
    reference: "Reference genome in fasta format. If you have multiple reference files, please use multipe -r options. If you have aready index the reference sequences, you should use the -i option."
    index: "Use the supplied bowtie index file, instead of indexing the genome in the script. If your genome index files are in folder /user/home/index, with names TAIR10.1.ebwt, TAIR10.2.ebwt, etc, you must use -i /user/home/index/TAIR10 for the -i option."
    temp: "Temporary folder to hold the bowtie index files. If not supplied, the current directory is used. Only used with -r."
    allowed_mismatch: "-v option in bowtie. Number of mismatches allowed. Default is 0."
    multi_alignment: "-k option in bowtie.  Report up to <int> vaild alignment. Default is 20."
    processor: "Use multiple threads to do alignment."
    filter_unmapped: "Filter out unmapped alignments in the output."
    fast_an: ""
  }
}