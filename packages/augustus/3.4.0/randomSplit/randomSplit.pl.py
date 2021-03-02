from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Randomsplit_Pl_V0_1_0 = CommandToolBuilder(tool="randomSplit.pl", base_command=["randomSplit.pl"], inputs=[ToolInput(tag="in_dbfile", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomsplit_Pl_V0_1_0().translate("wdl")

