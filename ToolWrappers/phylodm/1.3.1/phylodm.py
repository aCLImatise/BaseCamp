from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phylodm_V0_1_0 = CommandToolBuilder(tool="phylodm", base_command=["phylodm"], inputs=[ToolInput(tag="in_newick", input_type=String(), position=0, doc=InputDocumentation(doc="path to the newick file")), ToolInput(tag="in_method", input_type=String(), position=1, doc=InputDocumentation(doc="use patristic distance {pd} or node distance {node}")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="path to output matrix"))], outputs=[], container="quay.io/biocontainers/phylodm:1.3.1--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylodm_V0_1_0().translate("wdl")

