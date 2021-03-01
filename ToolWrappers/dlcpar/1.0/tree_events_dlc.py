from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Tree_Events_Dlc_V0_1_0 = CommandToolBuilder(tool="tree_events_dlc", base_command=["tree-events-dlc"], inputs=[ToolInput(tag="in_stree", input_type=String(optional=True), prefix="--stree", doc=InputDocumentation(doc="species tree (newick format)")), ToolInput(tag="in_s_map", input_type=Int(optional=True), prefix="--smap", doc=InputDocumentation(doc="mapping of gene names to species names")), ToolInput(tag="in_tree_ext", input_type=File(optional=True), prefix="--treeext", doc=InputDocumentation(doc="tree file extension (default: '.coal.tree')")), ToolInput(tag="in_reco_next", input_type=File(optional=True), prefix="--reconext", doc=InputDocumentation(doc="tree file extension (default: '.coal.recon')")), ToolInput(tag="in_use_f_amid", input_type=Boolean(optional=True), prefix="--use-famid", doc=InputDocumentation(doc="set to ignore extra lineages at implied speciation")), ToolInput(tag="in_nodes", input_type=String(), position=0, doc=InputDocumentation(doc="--use-locus-recon     if set, use locus recon rather than MPR"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tree_Events_Dlc_V0_1_0().translate("wdl", allow_empty_container=True)

