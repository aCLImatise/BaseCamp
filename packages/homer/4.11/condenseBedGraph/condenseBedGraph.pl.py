from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Condensebedgraph_Pl_V0_1_0 = CommandToolBuilder(tool="condenseBedGraph.pl", base_command=["condenseBedGraph.pl"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="-log", doc=InputDocumentation(doc="(output log2)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Condensebedgraph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

