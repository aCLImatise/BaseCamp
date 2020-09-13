version 1.0

task Ogenerategephinetworkfile {
  input {
    File? sample_mapping
    File? unit_mapping
    Int? sample_size
    Int? unit_size
    Int? min_abundance
    Int? min_sum_normalized_percent
    Boolean? skip_sample_labels
    Boolean? skip_unit_labels
  }
  command <<<
    o_generate_gephi_network_file \
      ~{if defined(sample_mapping) then ("--sample-mapping " +  '"' + sample_mapping + '"') else ""} \
      ~{if defined(unit_mapping) then ("--unit-mapping " +  '"' + unit_mapping + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(unit_size) then ("--unit-size " +  '"' + unit_size + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(min_sum_normalized_percent) then ("--min-sum-normalized-percent " +  '"' + min_sum_normalized_percent + '"') else ""} \
      ~{if (skip_sample_labels) then "--skip-sample-labels" else ""} \
      ~{if (skip_unit_labels) then "--skip-unit-labels" else ""}
  >>>
  parameter_meta {
    sample_mapping: "Providing a sample mapping file will make Gephi file\\nmuch more useful."
    unit_mapping: "Structurally, unit mapping is identical to sample\\nmapping file, instead, it describes properties of\\nunits."
    sample_size: "Sample node size. Default: 8"
    unit_size: "Unit node size. Default: 2"
    min_abundance: "Minimum abundance of a unit to be included in the\\nnetwork. It usually a good idea to give some cut-off\\nsince each unit (whether it is an oligotype or an MED\\nnode) is going to be a part of the network (total\\nnumber of reads divided by 10,000 might be a good\\nstart)."
    min_sum_normalized_percent: "This defines the minimum sum normalized percent for an\\noligotype or MED node in a sample to form an edge in\\nthe network. Sum normalization takes an oligotype or\\nMED node, generates a vector from its percent\\noccurence in all samples, then normalizes the percent\\nabundances so the total of the vector adds up to 100%.\\nThe default is 1, but it might be a good idea to set\\nit to 0 for samples with a lot of samples (such as\\nmore than 100 samples)."
    skip_sample_labels: "Leave sample labels blank."
    skip_unit_labels: "Leave unit labels blank."
  }
  output {
    File out_stdout = stdout()
  }
}