from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Huge_Split_Pl_V0_1_0 = CommandToolBuilder(tool="huge_split.pl", base_command=["huge-split.pl"], inputs=[ToolInput(tag="in_split", input_type=Int(optional=True), prefix="--split", doc=InputDocumentation(doc="Split the bigram file into smaller files. Every\nsmaller file contains N bigrams. N must be an integer.")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Huge_Split_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

