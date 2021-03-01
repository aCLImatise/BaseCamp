from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ghost_Tree_Silva_Command_V0_1_0 = CommandToolBuilder(tool="ghost_tree_silva_COMMAND", base_command=["ghost-tree", "silva", "COMMAND"], inputs=[ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ghost_Tree_Silva_Command_V0_1_0().translate("wdl", allow_empty_container=True)

