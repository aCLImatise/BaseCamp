version 1.0

task Cliquesnv {
  input {
    String? _run_one
    Boolean? in
    Directory? outdir
    Int? threads
  }
  command <<<
    cliquesnv \
      ~{if defined(_run_one) then ("-m " +  '"' + _run_one + '"') else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (outdir) then "-outDir" else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cliquesnv:2.0.0--hdfd78af_0"
  }
  parameter_meta {
    _run_one: "-- run one of predefined methods. Methods are: snv-pacbio, snv-illumina, snv-pacbio-vc, snv-illumina-vc"
    in: "/usr/name/tmp/reads.sam -- input file"
    outdir: "/usr/name/tmp/ -- folder with output."
    threads: "-- how many threads to use in parallel. Usually just the number of cores is the best choice"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}