version 1.0

task BcbioFastqUmiPreppyDragen {
  input {
    Directory? outdir
    String files
  }
  command <<<
    bcbio_fastq_umi_prep_py dragen \
      ~{files} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.6--pyh3252c3a_0"
  }
  parameter_meta {
    outdir: "Output directory to write UMI prepped fastqs"
    files: "All fastq files to pair and process"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}