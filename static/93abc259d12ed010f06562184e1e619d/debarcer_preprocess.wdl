version 1.0

task DebarcerPreprocess {
  input {
    Directory? outdir
    Int? read_one
    Int? read_two
    Int? read_three
    String? prep_name
    File? prep_file
    File? config
    Int? prefix
  }
  command <<<
    debarcer preprocess \
      ~{if defined(outdir) then ("--OutDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(read_one) then ("--Read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--Read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(read_three) then ("--Read3 " +  '"' + read_three + '"') else ""} \
      ~{if defined(prep_name) then ("--Prepname " +  '"' + prep_name + '"') else ""} \
      ~{if defined(prep_file) then ("--Prepfile " +  '"' + prep_file + '"') else ""} \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(prefix) then ("--Prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    outdir: "Output directory. Available from command or config"
    read_one: "Path to first FASTQ file."
    read_two: "Path to second FASTQ file, if applicable"
    read_three: "Path to third FASTQ file, if applicable"
    prep_name: "Name of library prep to use (defined in\\nlibrary_prep_types.ini)"
    prep_file: "Path to your library_prep_types.ini file"
    config: "Path to your config file"
    prefix: "Prefix for naming umi-reheradered fastqs. Use Prefix\\nfrom Read1 if not provided\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}