version 1.0

task Covidspikeclassification {
  input {
    File? reference
    String? input_format
    File? outdir
    Boolean? quiet
    Boolean? stdout
    Boolean? silence_warnings
    Directory? zip_results
    String disk
    String crashes
  }
  command <<<
    covid_spike_classification \
      ~{disk} \
      ~{crashes} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (silence_warnings) then "--silence-warnings" else ""} \
      ~{if (zip_results) then "--zip-results" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/covid-spike-classification:0.5.0--pyhdfd78af_0"
  }
  parameter_meta {
    reference: "Reference FASTA file to use (default:\\n/ref/NC_045512.fasta)."
    input_format: "Select which input format to expect. Choices: ab1,\\nfasta, fastq. default: ab1"
    outdir: "File to write result CSV and fastq files to (default:\\n2021-05-03)."
    quiet: "Suppress noisy output from the tools run"
    stdout: "Print results to stdout in addition to writing them to"
    silence_warnings: "Silence D614G warnings."
    zip_results: "Create a zipfile from the output directory instead of\\nthe output directory.\\n"
    disk: "-d, --debug           Debug mode: Keep bam file around when the parsing"
    crashes: "--show-unexpected     Show unexpected mutations instead of reporting 'no"
  }
  output {
    File out_stdout = stdout()
    Directory out_zip_results = "${in_zip_results}"
  }
}