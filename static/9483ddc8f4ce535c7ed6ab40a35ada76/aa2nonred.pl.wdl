version 1.0

task Aa2nonredpl {
  input {
    Int? max_id
    File? blast_path
    File? diamond_path
    Int? cores
    Boolean? diamond
    String? verbosity
    String input_dot_fa
    String output_dot_fa
  }
  command <<<
    aa2nonred_pl \
      ~{input_dot_fa} \
      ~{output_dot_fa} \
      ~{if defined(max_id) then ("--maxid " +  '"' + max_id + '"') else ""} \
      ~{if defined(blast_path) then ("--BLAST_PATH " +  '"' + blast_path + '"') else ""} \
      ~{if defined(diamond_path) then ("--DIAMOND_PATH " +  '"' + diamond_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (diamond) then "--diamond" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_id: "maximum percent identity between to sequences\\n(#identical aa) / (length of shorter sequence) default: 0.8"
    blast_path: "path to blast (only implemented for NCBI BLAST)"
    diamond_path: "path to diamond"
    cores: "number of cores to be used by NCBI BLAST or DIAMOND"
    diamond: "use DIAMOND istead of NCBI BLAST"
    verbosity: "verbosity level for information printed to stdout"
    input_dot_fa: ""
    output_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}