from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Graphmap2_V0_1_0 = CommandToolBuilder(tool="graphmap2", base_command=["graphmap2"], inputs=[ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Specifies the tool to run:\nalign - the entire GraphMap pipeline.\nowler - Overlapping With Long Erroneous Reads.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphmap2_V0_1_0().translate("wdl", allow_empty_container=True)

