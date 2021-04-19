version 1.0

task Protgraph {
  input {
    Int? num_of_entries
    File? exclude_accessions
    Int? num_of_processes
    Boolean? verify_graph
    Boolean? skip_isoforms
    Boolean? skip_variants
    Boolean? skip_signal
    String? digestion
    Boolean? no_merge
    Boolean? annotate_mono_weights
    Boolean? annotate_a_vrg_weights
    Boolean? annotate_mono_weight_to_end
    Boolean? annotate_a_vrg_weight_to_end
    String? mass_dict_type
    Int? mass_dict_factor
    Boolean? calc_num_possibilities
    Boolean? calc_num_possibilities_mis_cleavages
    Boolean? calc_num_possibilities_hops
    File? output_csv
    Directory? export_output_folder
    Boolean? export_in_directories
    Boolean? export_dot
    Boolean? export_graph_ml
    Boolean? export_gml
    Boolean? export_pickle
    Boolean? export_red_is_graph
    String? red_is_graph_host
    Int? red_is_graph_port
    String? red_is_graph_graph
    Boolean? export_postgres
    Float? postgres_host
    Int? postgres_port
    String? postgres_user
    String? postgres_password
    String? postgres_database
    Boolean? export_mysql
    Float? mysql_host
    Int? mysql_port
    String? mysql_user
    String? mysql_password
    String? mysql_database
    Boolean? export_peptide_postgres
    Float? pep_postgres_host
    Int? pep_postgres_port
    String? pep_postgres_user
    String? pep_postgres_password
    String? pep_postgres_database
    Int? pep_postgres_hops
    Int? pep_postgres_mis_cleavages
    Boolean? pep_postgres_skip_x
    Boolean? pep_postgres_no_duplicates
    Boolean? pep_postgres_use_i_graph
    Int? pep_postgres_min_pep_length
    Int? pep_postgres_batch_size
    Boolean? export_peptide_mysql
    Float? pep_mysql_host
    Int? pep_mysql_port
    String? pep_mysql_user
    String? pep_mysql_password
    String? pep_mysql_database
    Int? pep_mysql_hops
    Int? pep_mysql_mis_cleavages
    Boolean? pep_mysql_skip_x
    Boolean? pep_mysql_no_duplicates
    Boolean? pep_mysql_use_i_graph
    Int? pep_mysql_min_pep_length
    Int? pep_mysql_batch_size
    Boolean? export_peptide_fast_a
    File? pep_fast_a_out
    Int? pep_fast_a_hops
    Int? pep_fast_a_mis_cleavages
    Boolean? pep_fast_a_skip_x
    Boolean? pep_fast_a_use_i_graph
    Int? pep_fast_a_min_pep_length
    Int? pep_fast_a_batch_size
    Boolean? export_gremlin
    Int? gremlin_url
    String? gremlin_traversal_source
    String files
    String feature_table
  }
  command <<<
    protgraph \
      ~{files} \
      ~{feature_table} \
      ~{if defined(num_of_entries) then ("--num_of_entries " +  '"' + num_of_entries + '"') else ""} \
      ~{if defined(exclude_accessions) then ("--exclude_accessions " +  '"' + exclude_accessions + '"') else ""} \
      ~{if defined(num_of_processes) then ("--num_of_processes " +  '"' + num_of_processes + '"') else ""} \
      ~{if (verify_graph) then "--verify_graph" else ""} \
      ~{if (skip_isoforms) then "--skip_isoforms" else ""} \
      ~{if (skip_variants) then "--skip_variants" else ""} \
      ~{if (skip_signal) then "--skip_signal" else ""} \
      ~{if defined(digestion) then ("--digestion " +  '"' + digestion + '"') else ""} \
      ~{if (no_merge) then "--no_merge" else ""} \
      ~{if (annotate_mono_weights) then "--annotate_mono_weights" else ""} \
      ~{if (annotate_a_vrg_weights) then "--annotate_avrg_weights" else ""} \
      ~{if (annotate_mono_weight_to_end) then "--annotate_mono_weight_to_end" else ""} \
      ~{if (annotate_a_vrg_weight_to_end) then "--annotate_avrg_weight_to_end" else ""} \
      ~{if defined(mass_dict_type) then ("--mass_dict_type " +  '"' + mass_dict_type + '"') else ""} \
      ~{if defined(mass_dict_factor) then ("--mass_dict_factor " +  '"' + mass_dict_factor + '"') else ""} \
      ~{if (calc_num_possibilities) then "--calc_num_possibilities" else ""} \
      ~{if (calc_num_possibilities_mis_cleavages) then "--calc_num_possibilities_miscleavages" else ""} \
      ~{if (calc_num_possibilities_hops) then "--calc_num_possibilities_hops" else ""} \
      ~{if defined(output_csv) then ("--output_csv " +  '"' + output_csv + '"') else ""} \
      ~{if defined(export_output_folder) then ("--export_output_folder " +  '"' + export_output_folder + '"') else ""} \
      ~{if (export_in_directories) then "--export_in_directories" else ""} \
      ~{if (export_dot) then "--export_dot" else ""} \
      ~{if (export_graph_ml) then "--export_graphml" else ""} \
      ~{if (export_gml) then "--export_gml" else ""} \
      ~{if (export_pickle) then "--export_pickle" else ""} \
      ~{if (export_red_is_graph) then "--export_redisgraph" else ""} \
      ~{if defined(red_is_graph_host) then ("--redisgraph_host " +  '"' + red_is_graph_host + '"') else ""} \
      ~{if defined(red_is_graph_port) then ("--redisgraph_port " +  '"' + red_is_graph_port + '"') else ""} \
      ~{if defined(red_is_graph_graph) then ("--redisgraph_graph " +  '"' + red_is_graph_graph + '"') else ""} \
      ~{if (export_postgres) then "--export_postgres" else ""} \
      ~{if defined(postgres_host) then ("--postgres_host " +  '"' + postgres_host + '"') else ""} \
      ~{if defined(postgres_port) then ("--postgres_port " +  '"' + postgres_port + '"') else ""} \
      ~{if defined(postgres_user) then ("--postgres_user " +  '"' + postgres_user + '"') else ""} \
      ~{if defined(postgres_password) then ("--postgres_password " +  '"' + postgres_password + '"') else ""} \
      ~{if defined(postgres_database) then ("--postgres_database " +  '"' + postgres_database + '"') else ""} \
      ~{if (export_mysql) then "--export_mysql" else ""} \
      ~{if defined(mysql_host) then ("--mysql_host " +  '"' + mysql_host + '"') else ""} \
      ~{if defined(mysql_port) then ("--mysql_port " +  '"' + mysql_port + '"') else ""} \
      ~{if defined(mysql_user) then ("--mysql_user " +  '"' + mysql_user + '"') else ""} \
      ~{if defined(mysql_password) then ("--mysql_password " +  '"' + mysql_password + '"') else ""} \
      ~{if defined(mysql_database) then ("--mysql_database " +  '"' + mysql_database + '"') else ""} \
      ~{if (export_peptide_postgres) then "--export_peptide_postgres" else ""} \
      ~{if defined(pep_postgres_host) then ("--pep_postgres_host " +  '"' + pep_postgres_host + '"') else ""} \
      ~{if defined(pep_postgres_port) then ("--pep_postgres_port " +  '"' + pep_postgres_port + '"') else ""} \
      ~{if defined(pep_postgres_user) then ("--pep_postgres_user " +  '"' + pep_postgres_user + '"') else ""} \
      ~{if defined(pep_postgres_password) then ("--pep_postgres_password " +  '"' + pep_postgres_password + '"') else ""} \
      ~{if defined(pep_postgres_database) then ("--pep_postgres_database " +  '"' + pep_postgres_database + '"') else ""} \
      ~{if defined(pep_postgres_hops) then ("--pep_postgres_hops " +  '"' + pep_postgres_hops + '"') else ""} \
      ~{if defined(pep_postgres_mis_cleavages) then ("--pep_postgres_miscleavages " +  '"' + pep_postgres_mis_cleavages + '"') else ""} \
      ~{if (pep_postgres_skip_x) then "--pep_postgres_skip_x" else ""} \
      ~{if (pep_postgres_no_duplicates) then "--pep_postgres_no_duplicates" else ""} \
      ~{if (pep_postgres_use_i_graph) then "--pep_postgres_use_igraph" else ""} \
      ~{if defined(pep_postgres_min_pep_length) then ("--pep_postgres_min_pep_length " +  '"' + pep_postgres_min_pep_length + '"') else ""} \
      ~{if defined(pep_postgres_batch_size) then ("--pep_postgres_batch_size " +  '"' + pep_postgres_batch_size + '"') else ""} \
      ~{if (export_peptide_mysql) then "--export_peptide_mysql" else ""} \
      ~{if defined(pep_mysql_host) then ("--pep_mysql_host " +  '"' + pep_mysql_host + '"') else ""} \
      ~{if defined(pep_mysql_port) then ("--pep_mysql_port " +  '"' + pep_mysql_port + '"') else ""} \
      ~{if defined(pep_mysql_user) then ("--pep_mysql_user " +  '"' + pep_mysql_user + '"') else ""} \
      ~{if defined(pep_mysql_password) then ("--pep_mysql_password " +  '"' + pep_mysql_password + '"') else ""} \
      ~{if defined(pep_mysql_database) then ("--pep_mysql_database " +  '"' + pep_mysql_database + '"') else ""} \
      ~{if defined(pep_mysql_hops) then ("--pep_mysql_hops " +  '"' + pep_mysql_hops + '"') else ""} \
      ~{if defined(pep_mysql_mis_cleavages) then ("--pep_mysql_miscleavages " +  '"' + pep_mysql_mis_cleavages + '"') else ""} \
      ~{if (pep_mysql_skip_x) then "--pep_mysql_skip_x" else ""} \
      ~{if (pep_mysql_no_duplicates) then "--pep_mysql_no_duplicates" else ""} \
      ~{if (pep_mysql_use_i_graph) then "--pep_mysql_use_igraph" else ""} \
      ~{if defined(pep_mysql_min_pep_length) then ("--pep_mysql_min_pep_length " +  '"' + pep_mysql_min_pep_length + '"') else ""} \
      ~{if defined(pep_mysql_batch_size) then ("--pep_mysql_batch_size " +  '"' + pep_mysql_batch_size + '"') else ""} \
      ~{if (export_peptide_fast_a) then "--export_peptide_fasta" else ""} \
      ~{if defined(pep_fast_a_out) then ("--pep_fasta_out " +  '"' + pep_fast_a_out + '"') else ""} \
      ~{if defined(pep_fast_a_hops) then ("--pep_fasta_hops " +  '"' + pep_fast_a_hops + '"') else ""} \
      ~{if defined(pep_fast_a_mis_cleavages) then ("--pep_fasta_miscleavages " +  '"' + pep_fast_a_mis_cleavages + '"') else ""} \
      ~{if (pep_fast_a_skip_x) then "--pep_fasta_skip_x" else ""} \
      ~{if (pep_fast_a_use_i_graph) then "--pep_fasta_use_igraph" else ""} \
      ~{if defined(pep_fast_a_min_pep_length) then ("--pep_fasta_min_pep_length " +  '"' + pep_fast_a_min_pep_length + '"') else ""} \
      ~{if defined(pep_fast_a_batch_size) then ("--pep_fasta_batch_size " +  '"' + pep_fast_a_batch_size + '"') else ""} \
      ~{if (export_gremlin) then "--export_gremlin" else ""} \
      ~{if defined(gremlin_url) then ("--gremlin_url " +  '"' + gremlin_url + '"') else ""} \
      ~{if defined(gremlin_traversal_source) then ("--gremlin_traversal_source " +  '"' + gremlin_traversal_source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/protgraph:0.0.2b3--pyhdfd78af_0"
  }
  parameter_meta {
    num_of_entries: "Number of entries across all files (summed). if given,\\nit will an estimation of the runtime"
    exclude_accessions: "A csv file only containing accessions in the first row\\nwhich should be excluded for processsing. Setting this\\nvalue may reduce the reading performance and therefore\\nthe throughput performance overall."
    num_of_processes: "The number of processes used to process entries. Each\\nprocess can process an entry individually. The default\\nvalue is 'cores - 1', since one process is reserved\\nfor reading entries"
    verify_graph: "Set this flag to perform a check whether the graph was\\ngenerated correctly. Here we explicitly check for\\nparallel edges, for DAG and other properties."
    skip_isoforms: "Set this flag to exclude isoforms 'VAR_SEQ' (and\\npossible modification on them like variations, etc...)\\nfrom the FeatureTable"
    skip_variants: "Set this flag to exclude 'VARIANT' from the"
    skip_signal: "Set this flag to exclude skipping the signal peptide\\n('SIGNAL' in FeatureTable) of specific proteins"
    digestion: "Set the digestion method. The full digestion cleaves\\nat every edge, which can be useful for retrieving all\\npossible peptides with arbitrary cutting points. The\\ndigestion method skip skips the digestion completely.\\nDefault: Trypsin"
    no_merge: "Set this flag to skip the merging process for chains\\nof nodes and edges into a single node. Setting this\\noption could drastically increase the size of the\\ngraph, especially its depth."
    annotate_mono_weights: "Set this to annotate nodes and edges with the\\nmonoisotopic weights. (Values are taken from the mass\\ndictionary)"
    annotate_a_vrg_weights: "Set this to annotate nodes and edges with the average\\nweights. (Values are taken from the mass dictionary)"
    annotate_mono_weight_to_end: "Set this to annotate nodes and edges with the\\nmonoisotopic end weights. This weight informs about\\nhow much weight is at least left to get to the end\\nNode. NOTE: Applying this, also sets the monoisotopic\\nweights"
    annotate_a_vrg_weight_to_end: "Set this to annotate nodes and edges with the average\\nend weights. This weight informs about how much weight\\nis at least left to get to the end Node. NOTE:\\nApplying this, also sets the average weights"
    mass_dict_type: "Set the type of the mass dictionary for amino acid.\\nDefault is set to int"
    mass_dict_factor: "Set the factor for the masses inside the\\nmass_dictionary. The default is set to 1 000 000 000,\\nso that each mass can be converted into integers."
    calc_num_possibilities: "If this is set, the number of all possible (non\\nrepeating) paths from the start to the end node will\\nbe calculated. This uses a dynamic programming\\napproach to calculate this in an efficient manner."
    calc_num_possibilities_mis_cleavages: "If this is set, the number of all possible (non\\nrepeating) paths from the start to the end node will\\nbe calculated. This returns a list, sorted by the\\nnumber of miscleavages (beginning at 0). Example:\\nReturns: [1, 3, 5, 2] -> 1 path with 0 miscleavages, 3\\npaths with 1 miscleavage, 5 paths with 2 miscleavages,\\netc ... This uses a dynamic programming approach to\\ncalculate this in an efficient manner. NOTE: This may\\nget memory heavy, depending on the proteins\\n(especially on Titin)"
    calc_num_possibilities_hops: "If this is set, the number of all possible (non\\nrepeating) paths from the start to the end node will\\nbe calculated. This returns a list, sorted by the\\nnumber of hops (beginning at 0). Example: Returns: [0,\\n3, 5, 2] -> 0 paths with 0 hops, 3 paths with 1 hop, 5\\npaths with 2 hops, etc ... This uses a dynamic\\nprogramming approach to calculate this in an efficient\\nmanner. NOTE: This mis even more memory heavy then\\nbinning on miscleavages. Of course it depends on the\\nproteins (especially on Titin) NOTE: The dedicated\\nstart and end node is not counted here. If you\\ntraverse a graph, expect +2 more nodes in a path!"
    output_csv: "Set the output file, which will contain information\\nabout the ProteinGaph (in csv) NOTE: It will write to\\n'protein_graph_statistics.csv' and overwrite if such a\\nfile exists. Default is set to the current working\\ndirectory"
    export_output_folder: "Set the output folder to specify the dirctory of\\nexported graphs (dot, graphml, gml) NOTE: It will\\noverwrite exisiting files. Default is set the current\\nworking directory"
    export_in_directories: "Set this flag to export files in directories (coded by\\naccession) instead of directly by the accession name.\\nThis could be useful if millions of proteins are added\\ninto this tool, since a folder with millions of\\nentries can be problematic in some cases."
    export_dot: "Set this flag to export a dot file for each protein"
    export_graph_ml: "Set this flag to export a GraphML file for each\\nprotein. This is the recommended export method."
    export_gml: "Set this flag to export a GML file for each protein"
    export_pickle: "Set this flag to export a Pickle file for each protein"
    export_red_is_graph: "Set this flag to export to a redis-server having the\\nmodule RedisGraph loaded."
    red_is_graph_host: "Set the host name for the redis-server having the\\nmodule RedisGraph. Default: localhost"
    red_is_graph_port: "Set the port for the redis-server having the module\\nRedisGraph. Default: 6379"
    red_is_graph_graph: "Set the graph name on the redis-server having the\\nmodule RedisGraph. Default 'proteins'"
    export_postgres: "Set this flag to export to a postgresql server.NOTE:\\nThis will try to create the tables 'nodes' and 'edges'\\non a specified database. Make sure the database in\\nwhich the data should be saved also exists."
    postgres_host: "Set the host name for the postgresql server. Default:\\n127.0.0.1"
    postgres_port: "Set the port for the postgresql server. Default: 5433"
    postgres_user: "Set the username for the postgresql server. Default:\\npostgres"
    postgres_password: "Set the password for the postgresql server. Default:\\ndeveloper"
    postgres_database: "Set the database which will be used for the postgresql\\nserver. Default: proteins"
    export_mysql: "Set this flag to export to a MySQL server.NOTE: This\\nwill try to create the tables 'nodes' and 'edges' on a\\nspecified database. Make sure the database in which\\nthe data should be saved also exists."
    mysql_host: "Set the host name for the MySQL server. Default:\\n127.0.0.1"
    mysql_port: "Set the port for the MySQL server. Default: 3306"
    mysql_user: "Set the username for the MySQL server. Default: root"
    mysql_password: "Set the password for the MySQL server. Default:\\n<empty>"
    mysql_database: "Set the database which will be used for the MySQL\\nserver. Default: proteins"
    export_peptide_postgres: "Set this flag to export peptides (specifically paths)\\nto a postgresql server.NOTE: This will try to create\\nthe tables 'accessions' and 'peptides' on a specified\\ndatabase. Make sure the database in which the data\\nshould be saved also exists. If problems occur, try to\\ndelete the generated tables and retry again."
    pep_postgres_host: "Set the host name for the postgresql server. Default:\\n127.0.0.1"
    pep_postgres_port: "Set the port for the postgresql server. Default: 5433"
    pep_postgres_user: "Set the username for the postgresql server. Default:\\npostgres"
    pep_postgres_password: "Set the password for the postgresql server. Default:\\ndeveloper"
    pep_postgres_database: "Set the database which will be used for the postgresql\\nserver. Default: proteins"
    pep_postgres_hops: "Set the number of hops (max length of path) which\\nshould be used to get paths from a graph. NOTE: the\\nlarger the number the more memory may be needed. This\\ndepends on the protein which currently is processed.\\nDefault is set to 'None', so all lengths are\\nconsidered."
    pep_postgres_mis_cleavages: "Set this number to filter the generated paths by their\\nmiscleavages.The protein graphs do contain infomration\\nabout 'infinite' miscleavages and therefor also return\\nthose paths/peptides. If setting (default) to '-1',\\nall results are considered. However you can limit the\\nnumber of miscleavages, if needed."
    pep_postgres_skip_x: "Set this flag to skip to skip all entries, which\\ncontain an X"
    pep_postgres_no_duplicates: "Set this flag to not insert duplicates into the\\ndatabase. NOTE: Setting this value decreases the\\nperformance drastically"
    pep_postgres_use_i_graph: "Set this flag to use igraph instead of netx. NOTE: If\\nsetting this flag, the peptide generation will be\\nconsiderably faster but also consumes much more\\nmemory. Also, the igraph implementation DOES NOT go\\nover each single edge, so some (repeating results) may\\nnever be discovered when using this flag."
    pep_postgres_min_pep_length: "Set the minimum peptide length to filter out smaller\\nexisting path/peptides. Here, the actual number of\\naminoacid for a peptide is referenced. Default: 0"
    pep_postgres_batch_size: "Set the batch size. This defines how many peptides are\\ninserted at once. Default: 25000"
    export_peptide_mysql: "Set this flag to export peptides (specifically paths)\\nto a MySQL server.NOTE: This will try to create the\\ntables 'accessions' and 'peptides' on a specified\\ndatabase. Make sure the database in which the data\\nshould be saved also exists. If problems occur, try to\\ndelete the generated tables and retry again."
    pep_mysql_host: "Set the host name for the mysql server. Default:\\n127.0.0.1"
    pep_mysql_port: "Set the port for the mysql server. Default: 3306"
    pep_mysql_user: "Set the username for the mysql server. Default: root"
    pep_mysql_password: "Set the password for the mysql server. Default: ''"
    pep_mysql_database: "Set the database which will be used for the mysql\\nserver. Default: proteins"
    pep_mysql_hops: "Set the number of hops (max length of path) which\\nshould be used to get paths from a graph. NOTE: the\\nlarger the number the more memory may be needed. This\\ndepends on the protein which currently is processed.\\nDefault is set to 'None', so all lengths are\\nconsidered."
    pep_mysql_mis_cleavages: "Set this number to filter the generated paths by their\\nmiscleavages.The protein graphs do contain infomration\\nabout 'infinite' miscleavages and therefor also return\\nthose paths/peptides. If setting (default) to '-1',\\nall results are considered. However you can limit the\\nnumber of miscleavages, if needed."
    pep_mysql_skip_x: "Set this flag to skip to skip all entries, which\\ncontain an X"
    pep_mysql_no_duplicates: "Set this flag to not insert duplicates into the\\ndatabase. NOTE: Setting this value decreases the\\nperformance drastically"
    pep_mysql_use_i_graph: "Set this flag to use igraph instead of netx. NOTE: If\\nsetting this flag, the peptide generation will be\\nconsiderably faster but also consumes much more\\nmemory. Also, the igraph implementation DOES NOT go\\nover each single edge, so some (repeating results) may\\nnever be discovered when using this flag."
    pep_mysql_min_pep_length: "Set the minimum peptide length to filter out smaller\\nexisting path/peptides. Here, the actual number of\\naminoacid for a peptide is referenced. Default: 0"
    pep_mysql_batch_size: "Set the batch size. This defines how many peptides are\\ninserted at once. Default: 25000"
    export_peptide_fast_a: "Set this flag to export peptides into a single fasta\\nfile."
    pep_fast_a_out: "Set the output file for the peptide fasta export.\\nDefault: '${pwd}/peptides.fasta'. NOTE: This will\\noverwrite existing files."
    pep_fast_a_hops: "Set the number of hops (max length of path) which\\nshould be used to get paths from a graph. NOTE: the\\nlarger the number the more memory may be needed. This\\ndepends on the protein which currently is processed.\\nDefault is set to 'None', so all lengths are\\nconsidered."
    pep_fast_a_mis_cleavages: "Set this number to filter the generated paths by their\\nmiscleavages.The protein graphs do contain infomration\\nabout 'infinite' miscleavages and therefor also return\\nthose paths/peptides. If setting (default) to '-1',\\nall results are considered. However you can limit the\\nnumber of miscleavages, if needed."
    pep_fast_a_skip_x: "Set this flag to skip to skip all entries, which\\ncontain an X"
    pep_fast_a_use_i_graph: "Set this flag to use igraph instead of netx. NOTE: If\\nsetting this flag, the peptide generation will be\\nconsiderably faster but also consumes much more\\nmemory. Also, the igraph implementation DOES NOT go\\nover each single edge, so some (repeating results) may\\nnever be discovered when using this flag."
    pep_fast_a_min_pep_length: "Set the minimum peptide length to filter out smaller\\nexisting path/peptides. Here, the actual number of\\naminoacid for a peptide is referenced. Default: 0"
    pep_fast_a_batch_size: "Set the batch size. This defines how many peptides are\\nprocessed and written at once. Default: 25000"
    export_gremlin: "Set this flag to export the graphs via gremlin to a\\ngremlin server.NOTE: The export is very slow, since it\\nexecutes each node as a single query (tested on\\nJanusGraph and Apache Gremlin Server). This exporter\\nis not well implemented and may not work. This is due\\nto difficulties implementing such an exporter in a\\nglobal manner. To reduce the number of errors: Try to\\nhave a stable connection to the gremlin-server and\\nalso allocate enough resource for it, so that it can\\nprocess the queries quick enough."
    gremlin_url: "Set the url to the gremlin URL (no authentication).\\nDefault: 'ws://localhost:8182/gremlin'"
    gremlin_traversal_source: "Set the traversal source for remote. Default 'g'\\n"
    files: "Files containing the Swissprot/EMBL-Entries (either in\\n.dat or .txt)"
    feature_table: "--skip_init_met, -sm  Set this flag to exclude the skipping of the initiator"
  }
  output {
    File out_stdout = stdout()
    File out_output_csv = "${in_output_csv}"
    Directory out_export_output_folder = "${in_export_output_folder}"
    File out_pep_fast_a_out = "${in_pep_fast_a_out}"
  }
}