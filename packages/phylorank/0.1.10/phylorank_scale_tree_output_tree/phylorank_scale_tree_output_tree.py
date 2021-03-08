from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phylorank_Scale_Tree_Output_Tree_V0_1_0 = CommandToolBuilder(tool="phylorank_scale_tree_output_tree", base_command=["phylorank", "scale_tree", "output_tree"], inputs=[ToolInput(tag="in_phylo_rank", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_scale_tree", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tree", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_tree", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/phylorank:0.1.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Scale_Tree_Output_Tree_V0_1_0().translate("wdl")

