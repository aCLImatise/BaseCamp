version 1.0

task Stagdbpl {
  input {
    String? name_stag_node
    File? node_used_nested
    String? synonym_for_k
    File? be_name_sxpr
    String? fetches_relationnode_unique
    String? top
    File? qf
    Boolean? keys
    String? format_transforms_events
    String arguments
    String stag
    String scripts
  }
  command <<<
    stag_db_pl \
      ~{arguments} \
      ~{stag} \
      ~{scripts} \
      ~{if defined(name_stag_node) then ("-r " +  '"' + name_stag_node + '"') else ""} \
      ~{if defined(node_used_nested) then ("-k " +  '"' + node_used_nested + '"') else ""} \
      ~{if defined(synonym_for_k) then ("-u " +  '"' + synonym_for_k + '"') else ""} \
      ~{if defined(be_name_sxpr) then ("-p " +  '"' + be_name_sxpr + '"') else ""} \
      ~{if defined(fetches_relationnode_unique) then ("-q " +  '"' + fetches_relationnode_unique + '"') else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(qf) then ("-qf " +  '"' + qf + '"') else ""} \
      ~{if (keys) then "-keys" else ""} \
      ~{if defined(format_transforms_events) then ("-w " +  '"' + format_transforms_events + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_stag_node: "This is the name of the stag node (XML element) that will be stored in\\nthe index; for example, with the XML below you may want to use the node\\nname person and the unique key id\\n<person_set>\\n<person>\\n<id>...</id>\\n</person>\\n<person>\\n<id>...</id>\\n</person>\\n...\\n</person_set>\\nThis flag should only be used when you want to store data"
    node_used_nested: "This node will be used as the unique/primary key for the data\\nThis node should be nested directly below the node that is being stored\\nin the index - if it is more that one below, specify a path\\nThis flag should only be used when you want to store data"
    synonym_for_k: "Synonym for -k"
    be_name_sxpr: "This can be the name of a stag supported format (xml, sxpr, itext) - XML\\nis assumed by default\\nIt can also be a module name - this module is used to parse the input\\nfile into a stag stream; see Data::Stag::BaseGenerator for details on\\nwriting your own parsers/event generators\\nThis flag should only be used when you want to store data"
    fetches_relationnode_unique: "Fetches the relation/node with unique key value equal to query-id\\nMultiple arguments can be passed by specifying -q multple times\\nThis flag should only be used when you want to query data"
    top: "If this is specified in conjunction with -q or -qf then all the query\\nresult nodes will be nested inside a node with this name (ie this\\nprovides a root for the resulting document tree)"
    qf: "This is a file of newline-seperated IDs; this is useful for querying the\\nindex in batch"
    keys: "This will write a list of all primary keys in the index"
    format_transforms_events: "This format will be used to write the data; can be any stag format (xml,\\nsxpr, itext) - default XML.\\nCan also be a module that catches the incoming stag event stream and\\ndoes something with it (for example, this could be a module you write\\nyourself that transforms the stag events into HTML)"
    arguments: "-i INDEXFILE\\nThis file will be used as the persistent index for storage/retrieval"
    stag: "For more complex stag to database mapping, see DBIx::DBStag and the"
    scripts: "stag-storenode"
  }
  output {
    File out_stdout = stdout()
  }
}