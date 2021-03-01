from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Tree_V0_1_0 = CommandToolBuilder(tool="Clustering_tree", base_command=["Clustering", "tree"], inputs=[ToolInput(tag="in_tree_builder", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_merges_dot_bin", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_newick_out", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

