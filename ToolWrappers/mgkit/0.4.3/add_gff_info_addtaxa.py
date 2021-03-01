from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Add_Gff_Info_Addtaxa_V0_1_0 = CommandToolBuilder(tool="add_gff_info_addtaxa", base_command=["add-gff-info", "addtaxa"], inputs=[ToolInput(tag="in_gene_tax_on_table", input_type=File(optional=True), prefix="--gene-taxon-table", doc=InputDocumentation(doc="GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz)\nor a similar file where GENE/TAXON are tab\nseparated and one per line")), ToolInput(tag="in_gene_attr", input_type=String(optional=True), prefix="--gene-attr", doc=InputDocumentation(doc="In which attribute the GENEID in the table is\nstored (defaults to *gene_id*)")), ToolInput(tag="in_hdf_table", input_type=Int(optional=True), prefix="--hdf-table", doc=InputDocumentation(doc="HDF5 file and table name to use for taxon_id\nlookups. The format to pass is the file name,\ncolon and the table file hf5:taxa-table. The\nindex in the table is the accession_id, while\nthe column `taxon_id` stores the taxon_id as\nint")), ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy file - If given, both *taxon_name* and\n*lineage* attributes will be set")), ToolInput(tag="in_dictionary", input_type=File(optional=True), prefix="--dictionary", doc=InputDocumentation(doc="A serialised dictionary, where the key is the\nGENEID and the value is TAXONID. It can be in\njson or msgpack format (can be a compressed\nfile) *Note*: the dictionary values takes\nprecedence over the table files")), ToolInput(tag="in_skip_no_tax_on", input_type=Boolean(optional=True), prefix="--skip-no-taxon", doc=InputDocumentation(doc="If used, annotations with no taxon_id won't be")), ToolInput(tag="in_cache_table", input_type=Boolean(optional=True), prefix="--cache-table", doc=InputDocumentation(doc="If used, annotations are not preloaded, but the\ntaxa table is cached, instead")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Options:")), ToolInput(tag="in_outputted", input_type=String(), position=1, doc=InputDocumentation(doc="-db, --taxon-db TEXT         DB used to add the taxonomic information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Addtaxa_V0_1_0().translate("wdl", allow_empty_container=True)

