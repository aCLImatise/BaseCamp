version 1.0

task ConvertExternalGenome {
  input {
    String? nuc_me_rpath
    String? nuc_mer_args
    String? delta_filter_path
    String? delta_filter_args
    String? reference
    String? external
    String? name
  }
  command <<<
    convert_external_genome \
      ~{if defined(nuc_me_rpath) then ("--nucmerpath " +  '"' + nuc_me_rpath + '"') else ""} \
      ~{if defined(nuc_mer_args) then ("--nucmerargs " +  '"' + nuc_mer_args + '"') else ""} \
      ~{if defined(delta_filter_path) then ("--deltafilterpath " +  '"' + delta_filter_path + '"') else ""} \
      ~{if defined(delta_filter_args) then ("--deltafilterargs " +  '"' + delta_filter_args + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(external) then ("--external " +  '"' + external + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    nuc_me_rpath: "Path to the 'nucmer' executable."
    nuc_mer_args: "Optional arguments to pass to the 'nucmer' executable."
    delta_filter_path: "Path to the 'delta-filter' executable."
    delta_filter_args: "Optional arguments to pass to the 'delta-filter' executable."
    reference: "Path to the reference fasta file."
    external: "Path to the external genome fasta file."
    name: "Name of this external genome."
  }
}