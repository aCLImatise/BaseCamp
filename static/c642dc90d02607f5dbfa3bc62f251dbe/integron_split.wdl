version 1.0

task IntegronSplit {
  input {
    Int? chunk
    File? outdir
    Boolean? mute
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    integron_split \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (mute) then "--mute" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/integron_finder:2.0rc6--py_0"
  }
  parameter_meta {
    chunk: "The number of files generate. Each chunks will\\ncontains n replicon where n = number of replicon in\\nthe input file / chunk.The n may vary in some chunks\\nbecause some replicon can be skip if they contains\\nillegal characters or are too short (<50bp)"
    outdir: "The path to the directory where to write the chunks.\\nIt must exists."
    mute: "mute the log on stdout.(continue to log on\\nintegron_split.out)"
    verbose: "Increase verbosity of output (can be cumulative : -vv)"
    quiet: "Decrease verbosity of output (can be cumulative : -qq)"
  }
  output {
    File out_stdout = stdout()
  }
}