from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Boolean

Sparse_Mapdb_V0_1_0 = CommandToolBuilder(tool="sparse_mapDB", base_command=["sparse", "mapDB"], inputs=[ToolInput(tag="in_dbname", input_type=Directory(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name for the database folder. REQUIRED.")), ToolInput(tag="in_map_db", input_type=String(optional=True), prefix="--mapDB", doc=InputDocumentation(doc="Name for the sub-database. REQUIRED.")), ToolInput(tag="in_seq_list", input_type=String(optional=True), prefix="--seqlist", doc=InputDocumentation(doc="A tab-delimited list of reference to include. It can be generated by 'SPARSE.py query'. REQUIRED.")), ToolInput(tag="in_n_thread", input_type=Int(optional=True), prefix="--n_thread", doc=InputDocumentation(doc="Number of threads to use. Default: 20")), ToolInput(tag="in_malt", input_type=Boolean(optional=True), prefix="--malt", doc=InputDocumentation(doc="Use MALT instead of minimap2 [default]")), ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="Append to existing database instead of overwrite [default]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Mapdb_V0_1_0().translate("wdl", allow_empty_container=True)

