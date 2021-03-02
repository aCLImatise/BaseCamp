from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Sga_Subgraph_V0_1_0 = CommandToolBuilder(tool="sga_subgraph", base_command=["sga", "subgraph"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write the subgraph to FILE (default: subgraph.asqg.gz)")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="the size of the subgraph to extract, all vertices that are at most N hops\naway from the root will be included (default: 5)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Subgraph_V0_1_0().translate("wdl", allow_empty_container=True)

