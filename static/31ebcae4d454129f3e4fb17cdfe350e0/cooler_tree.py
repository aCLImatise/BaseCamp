from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cooler_Tree_V0_1_0 = CommandToolBuilder(tool="cooler_tree", base_command=["cooler", "tree"], inputs=[ToolInput(tag="in_uri", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Tree_V0_1_0().translate("wdl")

