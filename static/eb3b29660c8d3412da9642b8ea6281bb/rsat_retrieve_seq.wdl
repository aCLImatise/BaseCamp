version 1.0

task RsatRetrieveseq {
  input {
    String? org
    Boolean? seq
    Boolean? in_format
    Boolean? prefix
    Boolean? feat_type
    Boolean? type
    Int? sequecnes_only_type
    String? query_should_orf
    Boolean? query_file_first
    Boolean? ids_only
    Boolean? all
    File? name_output_file
    File? oft
    Boolean? from
    String? format
    Boolean? lw
    String? label
    Boolean? labelsep
    Boolean? no_orf
    Boolean? rm
    Boolean? nocom
    Boolean? imp_pos
    Boolean? nowarn
    Boolean? rand_sels
    Boolean? lf
    Boolean? features
    String genes_dot
    String genomics
    String column
  }
  command <<<
    rsat retrieve_seq \
      ~{genes_dot} \
      ~{genomics} \
      ~{column} \
      ~{if defined(org) then ("-org " +  '"' + org + '"') else ""} \
      ~{if (seq) then "-seq" else ""} \
      ~{if (in_format) then "-informat" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (feat_type) then "-feattype" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if defined(sequecnes_only_type) then ("-n " +  '"' + sequecnes_only_type + '"') else ""} \
      ~{if defined(query_should_orf) then ("-q " +  '"' + query_should_orf + '"') else ""} \
      ~{if (query_file_first) then "-i" else ""} \
      ~{if (ids_only) then "-ids_only" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (name_output_file) then "-o" else ""} \
      ~{if (oft) then "-oft" else ""} \
      ~{if (from) then "-from" else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (lw) then "-lw" else ""} \
      ~{if defined(label) then ("-label " +  '"' + label + '"') else ""} \
      ~{if (labelsep) then "-labelsep" else ""} \
      ~{if (no_orf) then "-noorf" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (nocom) then "-nocom" else ""} \
      ~{if (imp_pos) then "-imp_pos" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (rand_sels) then "-randsels" else ""} \
      ~{if (lf) then "-lf" else ""} \
      ~{if (features) then "-features" else ""}
  >>>
  parameter_meta {
    org: "When an organism is specified, the program automatically\\nloads the appropriate genome sequence and feature table.\\nIf this option is not used, the option -seq must be used\\ninstead.\\n(type supported-organism to obtain the list of supported\\norganisms)"
    seq: "input sequence file\\n(alternative to organism)\\nSpecify the input sequence file. See INPUT FORMAT\\nbelow."
    in_format: "input sequence format"
    prefix: "prefix for sequence identifier"
    feat_type: "Feature type.\\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
    type: "sequence type\\nCurrently supported sequence types\\nupstream (default)\\ndownstream\\norf (warning: introns are not spliced out)\\nrandom (random fragments)\\nTo implement in the future\\nintrons\\ncoding\\nThe sub-option\\n-type random\\nrequires to use the -n for specifying the number of sequences."
    sequecnes_only_type: "of sequecnes (only with -type random)"
    query_should_orf: "The query should be an orf identifier (eg 'metR').\\nThe query is case-insensitive.\\nMultiple queries can be entered by reiteratively using the -q\\noption."
    query_file_first: "query file. The first word of each line is taken as a query.\\nThis option is incompatible with -q."
    ids_only: "Use this option if the queries are provided as a list\\nof IDs. This avoids to load the table of synonyms, in\\norder tos ave time."
    all: "return all genomic upstream regions"
    name_output_file: "name of the output file"
    oft: "output features file\\nin addition to the sequences, export a feature file with the\\nchromosomal location of the retrieved sequences."
    from: "#1 -to #2\\nwhere #1 and #2 are numbers. #2 should be higher than #1.\\nlimits of the region to extract, relative to orf start\\n(=position 0). Use negative values for upstream sequence.\\nexample: -from -800 -to -1\\nwill extract the 800 bp upstream the orf start.\\n(this is the default)"
    format: "to select different output formats, with the following\\noptions:\\nIG      IntelliGenetics (default format)\\nWC      wconsensus format\\nraw     only the sequence is returned, without spaces, newlines\\nnor comments.\\nFastA"
    lw: "##  Line width. A newline character will be inserted in the\\nsequence every ## bases. Default is 60.\\n-lw 0 will prevent newline insertion."
    label: "Field(s) to be used in the sequence label.\\nDefault: name.\\nSupported: id,name,query,organism_name,sequence_type,current_from,current_to,ctg,orf_strand,reg_left,reg_right\\nMultiple fields can be specified, separated by commas\\nin the command line.\\nExample:\\n-label org,name,id\\nIn this case, the sequence identifier will contain all\\nof these fields, separated by the separator specified\\nwith the option -labelsep."
    labelsep: "Separator between label fields. Default: |"
    no_orf: "prevent overlap with neighbout genes.\\nWhen this option is active, the sequence size is\\nadapted to avoid including coding sequences of the\\nneighbour genes.\\nThe reason for preventing overlap with upstream genes\\nis that (at least for microbial organisms, and in\\nlarge part for higher eukaryotes) most cis-acting\\nelements are located in the non-coding regions. Thus,\\nif the neighbour gene is closer than the selected\\nlimit for collecting upstream sequences, the part of\\ncoding sequences included it the result is likely to\\nadd up to the noise, without bringing any additional\\nsignal.\\nMore importantly, coding and non-coding sequences\\ngenerally have very different background models. The\\ninclusion of coding sequences from neighbour genes may\\nthus lead to biases in motif discovery.\\nThe weaknesses of using this option are that, in some\\ncases, predicted orf do not correspond to real genes,\\nThis was particularly frequent in the early versions\\nof the yeast genome, but the annotations have been\\nimproved since then.\\nFor bacterial sequences, it is essential to prevent\\noverlap with upstream genes, because intergenic\\ndistances are often very short, especially between\\npairs of genes comprised in the same operon."
    rm: "Use the repeat masked version of the genome.  Attention :\\nrepeated regions are annotated for some genomes only."
    nocom: "no comments. Only the identifier and the sequence are\\nreturned. By default, the comment indicates the ORF and\\nupstream sequence coordinates."
    imp_pos: "Admit imprecise positions.\\nIn the annotation of some genomes, the limits of some genes\\nare imprecisely specified (e.g. <555245, >898098). By default,\\nthese genes are not loaded. The option -imp_pos allows to\\nretrieve sequence for these genes as well, using the imprecise\\ncoordinate as reference position."
    nowarn: "Prevents warning when a gene cannot be identified."
    rand_sels: "#\\nSelect a random set of # genes in the genome annotations.\\nThis option ois obsolete, it has been replaced by a\\nseparate command: random-genes. The option is\\nmaintained for backward compatibility."
    lf: "length file\\n(only with the option '-type random')\\nAllows to generate random sequences with the same\\nlengths as a set of reference sequences. The sequence\\nlength file can be obtained with the command\\nsequence-lengths\\nThe length file contains two columns :\\n- sequence ID (ignored)\\n- sequence length"
    features: "alternate feature table. This option allows to speify\\nan alternate file where the ORF locations are found.\\nSee below for a description of the feature file format."
    genes_dot: "CATEGORY"
    genomics: "sequences"
    column: "field   description"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_oft = "${in_oft}"
  }
}