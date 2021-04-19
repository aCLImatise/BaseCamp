class: CommandLineTool
id: protgraph.cwl
inputs:
- id: in_num_of_entries
  doc: "Number of entries across all files (summed). if given,\nit will an estimation\
    \ of the runtime"
  type: long?
  inputBinding:
    prefix: --num_of_entries
- id: in_exclude_accessions
  doc: "A csv file only containing accessions in the first row\nwhich should be excluded\
    \ for processsing. Setting this\nvalue may reduce the reading performance and\
    \ therefore\nthe throughput performance overall."
  type: File?
  inputBinding:
    prefix: --exclude_accessions
- id: in_num_of_processes
  doc: "The number of processes used to process entries. Each\nprocess can process\
    \ an entry individually. The default\nvalue is 'cores - 1', since one process\
    \ is reserved\nfor reading entries"
  type: long?
  inputBinding:
    prefix: --num_of_processes
- id: in_verify_graph
  doc: "Set this flag to perform a check whether the graph was\ngenerated correctly.\
    \ Here we explicitly check for\nparallel edges, for DAG and other properties."
  type: boolean?
  inputBinding:
    prefix: --verify_graph
- id: in_skip_isoforms
  doc: "Set this flag to exclude isoforms 'VAR_SEQ' (and\npossible modification on\
    \ them like variations, etc...)\nfrom the FeatureTable"
  type: boolean?
  inputBinding:
    prefix: --skip_isoforms
- id: in_skip_variants
  doc: Set this flag to exclude 'VARIANT' from the
  type: boolean?
  inputBinding:
    prefix: --skip_variants
- id: in_skip_signal
  doc: "Set this flag to exclude skipping the signal peptide\n('SIGNAL' in FeatureTable)\
    \ of specific proteins"
  type: boolean?
  inputBinding:
    prefix: --skip_signal
- id: in_digestion
  doc: "Set the digestion method. The full digestion cleaves\nat every edge, which\
    \ can be useful for retrieving all\npossible peptides with arbitrary cutting points.\
    \ The\ndigestion method skip skips the digestion completely.\nDefault: Trypsin"
  type: string?
  inputBinding:
    prefix: --digestion
- id: in_no_merge
  doc: "Set this flag to skip the merging process for chains\nof nodes and edges into\
    \ a single node. Setting this\noption could drastically increase the size of the\n\
    graph, especially its depth."
  type: boolean?
  inputBinding:
    prefix: --no_merge
- id: in_annotate_mono_weights
  doc: "Set this to annotate nodes and edges with the\nmonoisotopic weights. (Values\
    \ are taken from the mass\ndictionary)"
  type: boolean?
  inputBinding:
    prefix: --annotate_mono_weights
- id: in_annotate_a_vrg_weights
  doc: "Set this to annotate nodes and edges with the average\nweights. (Values are\
    \ taken from the mass dictionary)"
  type: boolean?
  inputBinding:
    prefix: --annotate_avrg_weights
- id: in_annotate_mono_weight_to_end
  doc: "Set this to annotate nodes and edges with the\nmonoisotopic end weights. This\
    \ weight informs about\nhow much weight is at least left to get to the end\nNode.\
    \ NOTE: Applying this, also sets the monoisotopic\nweights"
  type: boolean?
  inputBinding:
    prefix: --annotate_mono_weight_to_end
- id: in_annotate_a_vrg_weight_to_end
  doc: "Set this to annotate nodes and edges with the average\nend weights. This weight\
    \ informs about how much weight\nis at least left to get to the end Node. NOTE:\n\
    Applying this, also sets the average weights"
  type: boolean?
  inputBinding:
    prefix: --annotate_avrg_weight_to_end
- id: in_mass_dict_type
  doc: "Set the type of the mass dictionary for amino acid.\nDefault is set to int"
  type: string?
  inputBinding:
    prefix: --mass_dict_type
- id: in_mass_dict_factor
  doc: "Set the factor for the masses inside the\nmass_dictionary. The default is\
    \ set to 1 000 000 000,\nso that each mass can be converted into integers."
  type: long?
  inputBinding:
    prefix: --mass_dict_factor
- id: in_calc_num_possibilities
  doc: "If this is set, the number of all possible (non\nrepeating) paths from the\
    \ start to the end node will\nbe calculated. This uses a dynamic programming\n\
    approach to calculate this in an efficient manner."
  type: boolean?
  inputBinding:
    prefix: --calc_num_possibilities
- id: in_calc_num_possibilities_mis_cleavages
  doc: "If this is set, the number of all possible (non\nrepeating) paths from the\
    \ start to the end node will\nbe calculated. This returns a list, sorted by the\n\
    number of miscleavages (beginning at 0). Example:\nReturns: [1, 3, 5, 2] -> 1\
    \ path with 0 miscleavages, 3\npaths with 1 miscleavage, 5 paths with 2 miscleavages,\n\
    etc ... This uses a dynamic programming approach to\ncalculate this in an efficient\
    \ manner. NOTE: This may\nget memory heavy, depending on the proteins\n(especially\
    \ on Titin)"
  type: boolean?
  inputBinding:
    prefix: --calc_num_possibilities_miscleavages
- id: in_calc_num_possibilities_hops
  doc: "If this is set, the number of all possible (non\nrepeating) paths from the\
    \ start to the end node will\nbe calculated. This returns a list, sorted by the\n\
    number of hops (beginning at 0). Example: Returns: [0,\n3, 5, 2] -> 0 paths with\
    \ 0 hops, 3 paths with 1 hop, 5\npaths with 2 hops, etc ... This uses a dynamic\n\
    programming approach to calculate this in an efficient\nmanner. NOTE: This mis\
    \ even more memory heavy then\nbinning on miscleavages. Of course it depends on\
    \ the\nproteins (especially on Titin) NOTE: The dedicated\nstart and end node\
    \ is not counted here. If you\ntraverse a graph, expect +2 more nodes in a path!"
  type: boolean?
  inputBinding:
    prefix: --calc_num_possibilities_hops
- id: in_output_csv
  doc: "Set the output file, which will contain information\nabout the ProteinGaph\
    \ (in csv) NOTE: It will write to\n'protein_graph_statistics.csv' and overwrite\
    \ if such a\nfile exists. Default is set to the current working\ndirectory"
  type: File?
  inputBinding:
    prefix: --output_csv
- id: in_export_output_folder
  doc: "Set the output folder to specify the dirctory of\nexported graphs (dot, graphml,\
    \ gml) NOTE: It will\noverwrite exisiting files. Default is set the current\n\
    working directory"
  type: Directory?
  inputBinding:
    prefix: --export_output_folder
- id: in_export_in_directories
  doc: "Set this flag to export files in directories (coded by\naccession) instead\
    \ of directly by the accession name.\nThis could be useful if millions of proteins\
    \ are added\ninto this tool, since a folder with millions of\nentries can be problematic\
    \ in some cases."
  type: boolean?
  inputBinding:
    prefix: --export_in_directories
- id: in_export_dot
  doc: Set this flag to export a dot file for each protein
  type: boolean?
  inputBinding:
    prefix: --export_dot
- id: in_export_graph_ml
  doc: "Set this flag to export a GraphML file for each\nprotein. This is the recommended\
    \ export method."
  type: boolean?
  inputBinding:
    prefix: --export_graphml
- id: in_export_gml
  doc: Set this flag to export a GML file for each protein
  type: boolean?
  inputBinding:
    prefix: --export_gml
- id: in_export_pickle
  doc: Set this flag to export a Pickle file for each protein
  type: boolean?
  inputBinding:
    prefix: --export_pickle
- id: in_export_red_is_graph
  doc: "Set this flag to export to a redis-server having the\nmodule RedisGraph loaded."
  type: boolean?
  inputBinding:
    prefix: --export_redisgraph
- id: in_red_is_graph_host
  doc: "Set the host name for the redis-server having the\nmodule RedisGraph. Default:\
    \ localhost"
  type: string?
  inputBinding:
    prefix: --redisgraph_host
- id: in_red_is_graph_port
  doc: "Set the port for the redis-server having the module\nRedisGraph. Default:\
    \ 6379"
  type: long?
  inputBinding:
    prefix: --redisgraph_port
- id: in_red_is_graph_graph
  doc: "Set the graph name on the redis-server having the\nmodule RedisGraph. Default\
    \ 'proteins'"
  type: string?
  inputBinding:
    prefix: --redisgraph_graph
- id: in_export_postgres
  doc: "Set this flag to export to a postgresql server.NOTE:\nThis will try to create\
    \ the tables 'nodes' and 'edges'\non a specified database. Make sure the database\
    \ in\nwhich the data should be saved also exists."
  type: boolean?
  inputBinding:
    prefix: --export_postgres
- id: in_postgres_host
  doc: "Set the host name for the postgresql server. Default:\n127.0.0.1"
  type: double?
  inputBinding:
    prefix: --postgres_host
- id: in_postgres_port
  doc: 'Set the port for the postgresql server. Default: 5433'
  type: long?
  inputBinding:
    prefix: --postgres_port
- id: in_postgres_user
  doc: "Set the username for the postgresql server. Default:\npostgres"
  type: string?
  inputBinding:
    prefix: --postgres_user
- id: in_postgres_password
  doc: "Set the password for the postgresql server. Default:\ndeveloper"
  type: string?
  inputBinding:
    prefix: --postgres_password
- id: in_postgres_database
  doc: "Set the database which will be used for the postgresql\nserver. Default: proteins"
  type: string?
  inputBinding:
    prefix: --postgres_database
- id: in_export_mysql
  doc: "Set this flag to export to a MySQL server.NOTE: This\nwill try to create the\
    \ tables 'nodes' and 'edges' on a\nspecified database. Make sure the database\
    \ in which\nthe data should be saved also exists."
  type: boolean?
  inputBinding:
    prefix: --export_mysql
- id: in_mysql_host
  doc: "Set the host name for the MySQL server. Default:\n127.0.0.1"
  type: double?
  inputBinding:
    prefix: --mysql_host
- id: in_mysql_port
  doc: 'Set the port for the MySQL server. Default: 3306'
  type: long?
  inputBinding:
    prefix: --mysql_port
- id: in_mysql_user
  doc: 'Set the username for the MySQL server. Default: root'
  type: string?
  inputBinding:
    prefix: --mysql_user
- id: in_mysql_password
  doc: "Set the password for the MySQL server. Default:\n<empty>"
  type: string?
  inputBinding:
    prefix: --mysql_password
- id: in_mysql_database
  doc: "Set the database which will be used for the MySQL\nserver. Default: proteins"
  type: string?
  inputBinding:
    prefix: --mysql_database
- id: in_export_peptide_postgres
  doc: "Set this flag to export peptides (specifically paths)\nto a postgresql server.NOTE:\
    \ This will try to create\nthe tables 'accessions' and 'peptides' on a specified\n\
    database. Make sure the database in which the data\nshould be saved also exists.\
    \ If problems occur, try to\ndelete the generated tables and retry again."
  type: boolean?
  inputBinding:
    prefix: --export_peptide_postgres
- id: in_pep_postgres_host
  doc: "Set the host name for the postgresql server. Default:\n127.0.0.1"
  type: double?
  inputBinding:
    prefix: --pep_postgres_host
- id: in_pep_postgres_port
  doc: 'Set the port for the postgresql server. Default: 5433'
  type: long?
  inputBinding:
    prefix: --pep_postgres_port
- id: in_pep_postgres_user
  doc: "Set the username for the postgresql server. Default:\npostgres"
  type: string?
  inputBinding:
    prefix: --pep_postgres_user
- id: in_pep_postgres_password
  doc: "Set the password for the postgresql server. Default:\ndeveloper"
  type: string?
  inputBinding:
    prefix: --pep_postgres_password
- id: in_pep_postgres_database
  doc: "Set the database which will be used for the postgresql\nserver. Default: proteins"
  type: string?
  inputBinding:
    prefix: --pep_postgres_database
- id: in_pep_postgres_hops
  doc: "Set the number of hops (max length of path) which\nshould be used to get paths\
    \ from a graph. NOTE: the\nlarger the number the more memory may be needed. This\n\
    depends on the protein which currently is processed.\nDefault is set to 'None',\
    \ so all lengths are\nconsidered."
  type: long?
  inputBinding:
    prefix: --pep_postgres_hops
- id: in_pep_postgres_mis_cleavages
  doc: "Set this number to filter the generated paths by their\nmiscleavages.The protein\
    \ graphs do contain infomration\nabout 'infinite' miscleavages and therefor also\
    \ return\nthose paths/peptides. If setting (default) to '-1',\nall results are\
    \ considered. However you can limit the\nnumber of miscleavages, if needed."
  type: long?
  inputBinding:
    prefix: --pep_postgres_miscleavages
- id: in_pep_postgres_skip_x
  doc: "Set this flag to skip to skip all entries, which\ncontain an X"
  type: boolean?
  inputBinding:
    prefix: --pep_postgres_skip_x
- id: in_pep_postgres_no_duplicates
  doc: "Set this flag to not insert duplicates into the\ndatabase. NOTE: Setting this\
    \ value decreases the\nperformance drastically"
  type: boolean?
  inputBinding:
    prefix: --pep_postgres_no_duplicates
- id: in_pep_postgres_use_i_graph
  doc: "Set this flag to use igraph instead of netx. NOTE: If\nsetting this flag,\
    \ the peptide generation will be\nconsiderably faster but also consumes much more\n\
    memory. Also, the igraph implementation DOES NOT go\nover each single edge, so\
    \ some (repeating results) may\nnever be discovered when using this flag."
  type: boolean?
  inputBinding:
    prefix: --pep_postgres_use_igraph
- id: in_pep_postgres_min_pep_length
  doc: "Set the minimum peptide length to filter out smaller\nexisting path/peptides.\
    \ Here, the actual number of\naminoacid for a peptide is referenced. Default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --pep_postgres_min_pep_length
- id: in_pep_postgres_batch_size
  doc: "Set the batch size. This defines how many peptides are\ninserted at once.\
    \ Default: 25000"
  type: long?
  inputBinding:
    prefix: --pep_postgres_batch_size
- id: in_export_peptide_mysql
  doc: "Set this flag to export peptides (specifically paths)\nto a MySQL server.NOTE:\
    \ This will try to create the\ntables 'accessions' and 'peptides' on a specified\n\
    database. Make sure the database in which the data\nshould be saved also exists.\
    \ If problems occur, try to\ndelete the generated tables and retry again."
  type: boolean?
  inputBinding:
    prefix: --export_peptide_mysql
- id: in_pep_mysql_host
  doc: "Set the host name for the mysql server. Default:\n127.0.0.1"
  type: double?
  inputBinding:
    prefix: --pep_mysql_host
- id: in_pep_mysql_port
  doc: 'Set the port for the mysql server. Default: 3306'
  type: long?
  inputBinding:
    prefix: --pep_mysql_port
- id: in_pep_mysql_user
  doc: 'Set the username for the mysql server. Default: root'
  type: string?
  inputBinding:
    prefix: --pep_mysql_user
- id: in_pep_mysql_password
  doc: "Set the password for the mysql server. Default: ''"
  type: string?
  inputBinding:
    prefix: --pep_mysql_password
- id: in_pep_mysql_database
  doc: "Set the database which will be used for the mysql\nserver. Default: proteins"
  type: string?
  inputBinding:
    prefix: --pep_mysql_database
- id: in_pep_mysql_hops
  doc: "Set the number of hops (max length of path) which\nshould be used to get paths\
    \ from a graph. NOTE: the\nlarger the number the more memory may be needed. This\n\
    depends on the protein which currently is processed.\nDefault is set to 'None',\
    \ so all lengths are\nconsidered."
  type: long?
  inputBinding:
    prefix: --pep_mysql_hops
- id: in_pep_mysql_mis_cleavages
  doc: "Set this number to filter the generated paths by their\nmiscleavages.The protein\
    \ graphs do contain infomration\nabout 'infinite' miscleavages and therefor also\
    \ return\nthose paths/peptides. If setting (default) to '-1',\nall results are\
    \ considered. However you can limit the\nnumber of miscleavages, if needed."
  type: long?
  inputBinding:
    prefix: --pep_mysql_miscleavages
- id: in_pep_mysql_skip_x
  doc: "Set this flag to skip to skip all entries, which\ncontain an X"
  type: boolean?
  inputBinding:
    prefix: --pep_mysql_skip_x
- id: in_pep_mysql_no_duplicates
  doc: "Set this flag to not insert duplicates into the\ndatabase. NOTE: Setting this\
    \ value decreases the\nperformance drastically"
  type: boolean?
  inputBinding:
    prefix: --pep_mysql_no_duplicates
- id: in_pep_mysql_use_i_graph
  doc: "Set this flag to use igraph instead of netx. NOTE: If\nsetting this flag,\
    \ the peptide generation will be\nconsiderably faster but also consumes much more\n\
    memory. Also, the igraph implementation DOES NOT go\nover each single edge, so\
    \ some (repeating results) may\nnever be discovered when using this flag."
  type: boolean?
  inputBinding:
    prefix: --pep_mysql_use_igraph
- id: in_pep_mysql_min_pep_length
  doc: "Set the minimum peptide length to filter out smaller\nexisting path/peptides.\
    \ Here, the actual number of\naminoacid for a peptide is referenced. Default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --pep_mysql_min_pep_length
- id: in_pep_mysql_batch_size
  doc: "Set the batch size. This defines how many peptides are\ninserted at once.\
    \ Default: 25000"
  type: long?
  inputBinding:
    prefix: --pep_mysql_batch_size
- id: in_export_peptide_fast_a
  doc: "Set this flag to export peptides into a single fasta\nfile."
  type: boolean?
  inputBinding:
    prefix: --export_peptide_fasta
- id: in_pep_fast_a_out
  doc: "Set the output file for the peptide fasta export.\nDefault: '${pwd}/peptides.fasta'.\
    \ NOTE: This will\noverwrite existing files."
  type: File?
  inputBinding:
    prefix: --pep_fasta_out
- id: in_pep_fast_a_hops
  doc: "Set the number of hops (max length of path) which\nshould be used to get paths\
    \ from a graph. NOTE: the\nlarger the number the more memory may be needed. This\n\
    depends on the protein which currently is processed.\nDefault is set to 'None',\
    \ so all lengths are\nconsidered."
  type: long?
  inputBinding:
    prefix: --pep_fasta_hops
- id: in_pep_fast_a_mis_cleavages
  doc: "Set this number to filter the generated paths by their\nmiscleavages.The protein\
    \ graphs do contain infomration\nabout 'infinite' miscleavages and therefor also\
    \ return\nthose paths/peptides. If setting (default) to '-1',\nall results are\
    \ considered. However you can limit the\nnumber of miscleavages, if needed."
  type: long?
  inputBinding:
    prefix: --pep_fasta_miscleavages
- id: in_pep_fast_a_skip_x
  doc: "Set this flag to skip to skip all entries, which\ncontain an X"
  type: boolean?
  inputBinding:
    prefix: --pep_fasta_skip_x
- id: in_pep_fast_a_use_i_graph
  doc: "Set this flag to use igraph instead of netx. NOTE: If\nsetting this flag,\
    \ the peptide generation will be\nconsiderably faster but also consumes much more\n\
    memory. Also, the igraph implementation DOES NOT go\nover each single edge, so\
    \ some (repeating results) may\nnever be discovered when using this flag."
  type: boolean?
  inputBinding:
    prefix: --pep_fasta_use_igraph
- id: in_pep_fast_a_min_pep_length
  doc: "Set the minimum peptide length to filter out smaller\nexisting path/peptides.\
    \ Here, the actual number of\naminoacid for a peptide is referenced. Default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --pep_fasta_min_pep_length
- id: in_pep_fast_a_batch_size
  doc: "Set the batch size. This defines how many peptides are\nprocessed and written\
    \ at once. Default: 25000"
  type: long?
  inputBinding:
    prefix: --pep_fasta_batch_size
- id: in_export_gremlin
  doc: "Set this flag to export the graphs via gremlin to a\ngremlin server.NOTE:\
    \ The export is very slow, since it\nexecutes each node as a single query (tested\
    \ on\nJanusGraph and Apache Gremlin Server). This exporter\nis not well implemented\
    \ and may not work. This is due\nto difficulties implementing such an exporter\
    \ in a\nglobal manner. To reduce the number of errors: Try to\nhave a stable connection\
    \ to the gremlin-server and\nalso allocate enough resource for it, so that it\
    \ can\nprocess the queries quick enough."
  type: boolean?
  inputBinding:
    prefix: --export_gremlin
- id: in_gremlin_url
  doc: "Set the url to the gremlin URL (no authentication).\nDefault: 'ws://localhost:8182/gremlin'"
  type: long?
  inputBinding:
    prefix: --gremlin_url
- id: in_gremlin_traversal_source
  doc: "Set the traversal source for remote. Default 'g'\n"
  type: string?
  inputBinding:
    prefix: --gremlin_traversal_source
- id: in_files
  doc: "Files containing the Swissprot/EMBL-Entries (either in\n.dat or .txt)"
  type: string
  inputBinding:
    position: 0
- id: in_feature_table
  doc: --skip_init_met, -sm  Set this flag to exclude the skipping of the initiator
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_csv
  doc: "Set the output file, which will contain information\nabout the ProteinGaph\
    \ (in csv) NOTE: It will write to\n'protein_graph_statistics.csv' and overwrite\
    \ if such a\nfile exists. Default is set to the current working\ndirectory"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_csv)
- id: out_export_output_folder
  doc: "Set the output folder to specify the dirctory of\nexported graphs (dot, graphml,\
    \ gml) NOTE: It will\noverwrite exisiting files. Default is set the current\n\
    working directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_export_output_folder)
- id: out_pep_fast_a_out
  doc: "Set the output file for the peptide fasta export.\nDefault: '${pwd}/peptides.fasta'.\
    \ NOTE: This will\noverwrite existing files."
  type: File?
  outputBinding:
    glob: $(inputs.in_pep_fast_a_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/protgraph:0.0.2b3--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- protgraph
