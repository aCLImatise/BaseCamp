version 1.0

task Bacphlip {
  input {
    File? input_file
    Boolean? force_overwrite
    Boolean? multi_fast_a
    File? local_hmm_search
  }
  command <<<
    bacphlip \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (multi_fast_a) then "--multi_fasta" else ""} \
      ~{if defined(local_hmm_search) then ("--local_hmmsearch " +  '"' + local_hmm_search + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bacphlip:0.9.6--py_0"
  }
  parameter_meta {
    input_file: "Should be a valid path to a single genome (nucleotide)\\nFASTA file containing only 1 record/contig."
    force_overwrite: "Whether to overwrite all existing files that will be\\ncreated if they exist. Default is False"
    multi_fast_a: "By default, BACPHLIP assumes that the input file\\ncontains one genome (nucleotide) sequence record.\\nUsers providing a multi_fasta input file must use this\\nflag. Note that each record should be uniquely named\\nand should contain complete genomes for different\\nphages. BACPHLIP should not be run on incomplete /\\nfragmented genomes spanning mulitple records."
    local_hmm_search: "By default, BACPHLIP assumes a system install of\\n\\\"hmmsearch\\\". Use this flag to provide a custom path to\\na local install of hmmsearch if necessary.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}