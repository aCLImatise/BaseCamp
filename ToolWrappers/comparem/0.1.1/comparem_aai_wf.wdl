version 1.0

task ComparemAaiWf {
  input {
    Float? evalue
    Float? per_identity
    Int? per_aln_len
    File? file_ext
    Boolean? proteins
    String? force_table
    Boolean? blastp
    Boolean? sensitive
    Boolean? keep_headers
    Boolean? keep_r_bhs
    Directory? tmp_dir
    Int? cpus
    Boolean? silent
    String input_files
    String output_dir
  }
  command <<<
    comparem aai_wf \
      ~{input_files} \
      ~{output_dir} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(per_identity) then ("--per_identity " +  '"' + per_identity + '"') else ""} \
      ~{if defined(per_aln_len) then ("--per_aln_len " +  '"' + per_aln_len + '"') else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if defined(force_table) then ("--force_table " +  '"' + force_table + '"') else ""} \
      ~{if (blastp) then "--blastp" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (keep_headers) then "--keep_headers" else ""} \
      ~{if (keep_r_bhs) then "--keep_rbhs" else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    evalue: "e-value cutoff for identifying initial blast hits\\n(default: 0.001)"
    per_identity: "percent identity for defining homology (default: 30.0)"
    per_aln_len: "percent alignment length of query sequence for\\ndefining homology (default: 70.0)"
    file_ext: "extension of files to process (default: fna)"
    proteins: "indicates the input files contain protein sequences"
    force_table: "force use of specific translation table"
    blastp: "use blastp instead of diamond"
    sensitive: "use sensitive mode of DIAMOND"
    keep_headers: "indicates FASTA headers already have the format\\n<genome_id>~<gene_id>"
    keep_r_bhs: "create file with reciprocal best hits"
    tmp_dir: "specify alternative directory for temporary files\\n(default: /tmp)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    input_files: "genome files"
    output_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}