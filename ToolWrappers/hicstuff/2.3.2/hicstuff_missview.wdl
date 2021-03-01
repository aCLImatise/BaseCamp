version 1.0

task HicstuffMissview {
  input {
    Int? aligner
    Int? binning
    File? force
    File? read_len
    Int? threads
    Directory? tmpdir
    String genome
    String path_output_image
  }
  command <<<
    hicstuff missview \
      ~{genome} \
      ~{path_output_image} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(binning) then ("--binning " +  '"' + binning + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicstuff:2.3.2--py_0"
  }
  parameter_meta {
    aligner: "The read alignment software to use. Can be either\\nbowtie2, minimap2 or bwa. minimap2 should only be\\nused for reads > 100 bp. [default: bowtie2]"
    binning: "Resolution to use to preview the Hi-C map. [default: 5000]"
    force: "Write even if the output file already exists."
    read_len: "Write even if the output file already exists."
    threads: "Number of CPUs to use in parallel. [default: 1]"
    tmpdir: "Directory where temporary files will be generated."
    genome: "Genome file in fasta format."
    path_output_image: "Path to the output image."
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
    File out_read_len = "${in_read_len}"
  }
}