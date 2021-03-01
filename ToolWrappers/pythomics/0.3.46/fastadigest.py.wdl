version 1.0

task Fastadigestpy {
  input {
    String? threads_to_run
    Boolean? fasta_file_operate
    String? type
    String? frame
    Boolean? genome
    File? file_write_results
    String? enzyme
    String? enzyme_pattern
    Int? min
    Int? max
    Boolean? unique
    String? fast_a
  }
  command <<<
    fastadigest_py \
      ~{fast_a} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (fasta_file_operate) then "-f" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(frame) then ("--frame " +  '"' + frame + '"') else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (file_write_results) then "-o" else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if (unique) then "--unique" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_operate: "[FASTA], --fasta [FASTA]\\nThe fasta file to operate on."
    type: "The type of fasta file (default protein)."
    frame: "If using a nucleotide file, translate in how many\\nframes?"
    genome: "Are we translating a genome? This will keep chromosome\\npositions in the header."
    file_write_results: "[OUT], --out [OUT]\\nThe file to write results to. Leave blank for stdout,"
    enzyme: "[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\\nThe enzyme to cleave with."
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave\\nproteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    unique: "Only return unique peptides per cleavage"
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_results = "${in_file_write_results}"
  }
}