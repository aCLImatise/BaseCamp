version 1.0

task RefinemTaxonProfile {
  input {
    String? per_to_classify
    String? evalue
    String? per_identity
    String? per_aln_len
    String? protein_ext
    String? tmpdir
    String? cpus
    Boolean? silent
    String genome_prot_dir
    String scaffold_stats_file
    String db_file
    String taxonomy_file
    String output_dir
  }
  command <<<
    refinem taxon_profile \
      ~{genome_prot_dir} \
      ~{scaffold_stats_file} \
      ~{db_file} \
      ~{taxonomy_file} \
      ~{output_dir} \
      ~{if defined(per_to_classify) then ("--per_to_classify " +  '"' + per_to_classify + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(per_identity) then ("--per_identity " +  '"' + per_identity + '"') else ""} \
      ~{if defined(per_aln_len) then ("--per_aln_len " +  '"' + per_aln_len + '"') else ""} \
      ~{if defined(protein_ext) then ("--protein_ext " +  '"' + protein_ext + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    per_to_classify: "minimum percentage of genes to assign a scaffold to a taxonomic group (default: 20.0)"
    evalue: "e-value of valid hits (default: 0.001)"
    per_identity: "percent identity of valid hits (default: 30.0)"
    per_aln_len: "minimum percent coverage of query sequence for reporting an alignment (default: 50.0)"
    protein_ext: "extension of amino acid gene files (other files in directory are ignored) (default: faa)"
    tmpdir: "specify alternative directory for temporary files (default: /tmp)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger"
    genome_prot_dir: "directory containing amino acid genes for each genome"
    scaffold_stats_file: "file with statistics for each scaffold"
    db_file: "DIAMOND database of reference genomes"
    taxonomy_file: "taxonomic assignment of each reference genomes"
    output_dir: "output directory"
  }
}