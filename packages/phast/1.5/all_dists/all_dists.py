from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

All_Dists_V0_1_0 = CommandToolBuilder(tool="all_dists", base_command=["all_dists"], inputs=[ToolInput(tag="in_mod", input_type=Boolean(optional=True), prefix="--mod", doc=InputDocumentation(doc="Read from tree model (*.mod) file(s) instead of Newick file.")), ToolInput(tag="in_tree", input_type=File(optional=True), prefix="--tree", doc=InputDocumentation(doc="|<string>\nUse leaf names from given tree.  Useful when primary files\nuse numbers rather than names.")), ToolInput(tag="in_tree_dot_nh", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_three_dot_nh", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    All_Dists_V0_1_0().translate("wdl", allow_empty_container=True)

