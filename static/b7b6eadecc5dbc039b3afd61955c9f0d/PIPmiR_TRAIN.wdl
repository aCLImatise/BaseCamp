version 1.0

task PIPmiRTRAIN {
  input {
    File? p
    File? k
    File? sorted_bam_file
    File? file_write_data
    Int? minimum_read_count
    Int? maximum_amount_memory
  }
  command <<<
    PIPmiR TRAIN \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(k) then ("-K " +  '"' + k + '"') else ""} \
      ~{if defined(sorted_bam_file) then ("-a " +  '"' + sorted_bam_file + '"') else ""} \
      ~{if defined(file_write_data) then ("-T " +  '"' + file_write_data + '"') else ""} \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(maximum_amount_memory) then ("-X " +  '"' + maximum_amount_memory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: "File of putative miRNA precursor sequences and their fold structure (see README)"
    k: "File of putative miRNA precursor sequences and their fold structure (see README)"
    sorted_bam_file: ".bam Sorted .bam file containing alignment of the read data"
    file_write_data: "File to write classifier training data (do not include filepath, new file will be generated in ./src/)"
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    maximum_amount_memory: "Maximum amount of memory PIPmiR can use (Default: 4G)"
  }
  output {
    File out_stdout = stdout()
    File out_file_write_data = "${in_file_write_data}"
  }
}