from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Tree_Events_Dlcpar_V0_1_0 = CommandToolBuilder(tool="tree_events_dlcpar", base_command=["tree-events-dlcpar"], inputs=[ToolInput(tag="in_stree", input_type=File(optional=True), prefix="--stree", doc=InputDocumentation(doc="species tree file in newick format")), ToolInput(tag="in_s_map", input_type=String(optional=True), prefix="--smap", doc=InputDocumentation(doc="gene to species map")), ToolInput(tag="in_l_map", input_type=String(optional=True), prefix="--lmap", doc=InputDocumentation(doc="gene to locus map (species-specific)")), ToolInput(tag="in_tree_ext", input_type=File(optional=True), prefix="--treeext", doc=InputDocumentation(doc="tree file extension (default: '.tree')")), ToolInput(tag="in_use_f_amid", input_type=Boolean(optional=True), prefix="--use-famid", doc=InputDocumentation(doc="set to ignore extra lineages at implied speciation\nnodes\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tree_Events_Dlcpar_V0_1_0().translate("wdl", allow_empty_container=True)

