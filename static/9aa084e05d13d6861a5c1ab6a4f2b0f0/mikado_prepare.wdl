version 1.0

task MikadoPrepare {
  input {
    File? fast_a
    String? start_method
    Boolean? strand_specific
    String? strand_specific_assemblies
    Boolean? list
    File? log
    Boolean? lenient
    Int? minimum_cdna_length
    Int? max_intron_size
    Int? procs
    Boolean? strip_cds
    String? labels
    Boolean? single_thread
    Directory? output_dir
    File? out
    File? out_fast_a
    File? json_conf
    Boolean? keep_redundant
    Int? seed
    String gff
  }
  command <<<
    mikado prepare \
      ~{gff} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if defined(strand_specific_assemblies) then ("--strand-specific-assemblies " +  '"' + strand_specific_assemblies + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (lenient) then "--lenient" else ""} \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_size) then ("--max-intron-size " +  '"' + max_intron_size + '"') else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if (strip_cds) then "--strip_cds" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (single_thread) then "--single-thread" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out_fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(json_conf) then ("--json-conf " +  '"' + json_conf + '"') else ""} \
      ~{if (keep_redundant) then "--keep-redundant" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "Genome FASTA file. Required."
    start_method: "Multiprocessing start method."
    strand_specific: "Flag. If set, monoexonic transcripts will be left on\\ntheir strand rather than being moved to the unknown\\nstrand."
    strand_specific_assemblies: "Comma-delimited list of strand specific assemblies."
    list: "Tab-delimited file containing rows with the following\\nformat: <file> <label> <strandedness>\\n<score(optional)> <is_reference(optional)>\\n<always_keep(optional) strandedness, is_reference and\\nalways_keep must be boolean values (True, False) score\\nmust be a valid floating number."
    log: "Log file. Optional."
    lenient: "Flag. If set, transcripts with only non-canonical\\nsplices will be output as well."
    minimum_cdna_length: "Minimum length for transcripts. Default: 200 bps."
    max_intron_size: "Maximum intron length for transcripts. Default:\\n1,000,000 bps."
    procs: "Number of processors to use (default None)"
    strip_cds: "Boolean flag. If set, ignores any CDS/UTR segment."
    labels: "Labels to attach to the IDs of the transcripts of the\\ninput files, separated by comma."
    single_thread: "Disable multi-threading. Useful for debugging."
    output_dir: "Output directory. Default: current working directory"
    out: "Output file. Default: mikado_prepared.gtf."
    out_fast_a: "Output file. Default: mikado_prepared.fasta."
    json_conf: "Configuration file."
    keep_redundant: "Boolean flag. If invoked, Mikado prepare will retain\\nredundant models."
    seed: "Random seed number."
    gff: "Input GFF/GTF file(s)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_out = "${in_out}"
    File out_out_fast_a = "${in_out_fast_a}"
  }
}