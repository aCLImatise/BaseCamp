from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reconcile_Tree_Alignment_V0_1_0 = CommandToolBuilder(tool="reconcile_tree_alignment", base_command=["reconcile-tree-alignment"], inputs=[ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_alignment", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_tree", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_alignment", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reconcile_Tree_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

