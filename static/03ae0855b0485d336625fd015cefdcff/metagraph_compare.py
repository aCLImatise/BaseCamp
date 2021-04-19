from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Metagraph_Compare_V0_1_0 = CommandToolBuilder(tool="metagraph_compare", base_command=["metagraph", "compare"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_graph_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_graph_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Compare_V0_1_0().translate("wdl")

