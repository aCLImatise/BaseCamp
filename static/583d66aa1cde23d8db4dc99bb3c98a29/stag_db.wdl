version 1.0

task StagDb.pl {
  input {
    String? file_will_used
    String? name_stag_node
    String? node_will_used
    String? synonym_for_mkm
    String? can_name_stag
    String? fetches_relationnode_unique
    String? top
    String? qf
    Boolean? keys
    String? format_will_used
  }
  command <<<
    stag-db.pl \
      ~{if defined(file_will_used) then ("-i " +  '"' + file_will_used + '"') else ""} \
      ~{if defined(name_stag_node) then ("-r " +  '"' + name_stag_node + '"') else ""} \
      ~{if defined(node_will_used) then ("-k " +  '"' + node_will_used + '"') else ""} \
      ~{if defined(synonym_for_mkm) then ("-u " +  '"' + synonym_for_mkm + '"') else ""} \
      ~{if defined(can_name_stag) then ("-p " +  '"' + can_name_stag + '"') else ""} \
      ~{if defined(fetches_relationnode_unique) then ("-q " +  '"' + fetches_relationnode_unique + '"') else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(qf) then ("-qf " +  '"' + qf + '"') else ""} \
      ~{true="-keys" false="" keys} \
      ~{if defined(format_will_used) then ("-w " +  '"' + format_will_used + '"') else ""}
  >>>
  parameter_meta {
    file_will_used: "This file will be used as the persistent index for storage/retrieval"
    name_stag_node: "This is the name of the stag node (XML element) that will be stored in the index; for example, with the XML below you may want to use the node name [1mperson[0m and the unique key [1mid[0m <person_set> <person> <id>...</id> </person> <person> <id>...</id> </person> ... </person_set> This flag should only be used when you want to store data"
    node_will_used: "This node will be used as the unique/primary key for the data This node should be nested directly below the node that is being stored in the index - if it is more that one below, specify a path This flag should only be used when you want to store data"
    synonym_for_mkm: "Synonym for [1m-k[0m"
    can_name_stag: "This can be the name of a stag supported format (xml, sxpr, itext) - XML is assumed by default It can also be a module name - this module is used to parse the input file into a stag stream; see Data::Stag::BaseGenerator for details on writing your own parsers/event generators This flag should only be used when you want to store data"
    fetches_relationnode_unique: "Fetches the relation/node with unique key value equal to query-id Multiple arguments can be passed by specifying -q multple times This flag should only be used when you want to query data"
    top: "If this is specified in conjunction with [1m-q[0m or [1m-qf[0m then all the query result nodes will be nested inside a node with this name (ie this provides a root for the resulting document tree)"
    qf: "This is a file of newline-seperated IDs; this is useful for querying the index in batch"
    keys: "This will write a list of all primary keys in the index"
    format_will_used: "This format will be used to write the data; can be any stag format (xml, sxpr, itext) - default XML. Can also be a module that catches the incoming stag event stream and does something with it (for example, this could be a module you write yourself that transforms the stag events into HTML)"
  }
}