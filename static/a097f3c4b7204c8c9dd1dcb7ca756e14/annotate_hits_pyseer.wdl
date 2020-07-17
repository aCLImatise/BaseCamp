version 1.0

task AnnotateHitsPyseer {
  input {
    String? bwa
    String? tmp_prefix
    String km_ers
    String references
    String output_file
  }
  command <<<
    annotate_hits_pyseer \
      ~{km_ers} \
      ~{references} \
      ~{output_file} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(tmp_prefix) then ("--tmp-prefix " +  '"' + tmp_prefix + '"') else ""}
  >>>
  parameter_meta {
    bwa: "Location of bwa executable [default=bwa]"
    tmp_prefix: "Directory to store temporary files [default=./]"
    km_ers: "Kmers file, filtered output from SEER"
    references: "File of reference annotations. First column fasta sequence, second column gff annotation, third column 'ref' or 'draft'"
    output_file: "Output file"
  }
}