version 1.0

task RgiBwt {
  input {
    String? read_one
    String? read_two
    File? output_file
    Boolean? debug
    Boolean? clean
    Boolean? local
    Boolean? include_wildcard
    Boolean? include_baits
    String? mapq
    String? mapped
    String? coverage
    String? a
    String aligner
  }
  command <<<
    rgi bwt \
      ~{aligner} \
      ~{if defined(read_one) then ("--read_one " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read_two " +  '"' + read_two + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (include_wildcard) then "--include_wildcard" else ""} \
      ~{if (include_baits) then "--include_baits" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(mapped) then ("--mapped " +  '"' + mapped + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one: "raw read one (qc and trimmied)"
    read_two: "raw read two (qc and trimmied)"
    output_file: "name of output filename(s)"
    debug: "debug mode"
    clean: "removes temporary files"
    local: "use local database (default: uses database in\\nexecutable directory)"
    include_wildcard: "include wildcard"
    include_baits: "include baits"
    mapq: "filter reads based on MAPQ score"
    mapped: "filter reads based on mapped reads"
    coverage: "filter reads based on coverage of reference sequence"
    a: ""
    aligner: "-n THREADS, --threads THREADS"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}