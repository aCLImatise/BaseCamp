from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Ghost_Tree_Compare_Trees_V0_1_0 = CommandToolBuilder(tool="ghost_tree_compare_trees", base_command=["ghost-tree", "compare-trees"], inputs=[ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc="[pearson|spearman]\ncorrelation method to use in Mantel test")), ToolInput(tag="in_tree_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ghost_Tree_Compare_Trees_V0_1_0().translate("wdl", allow_empty_container=True)

