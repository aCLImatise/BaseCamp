from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustal2Link_V0_1_0 = CommandToolBuilder(tool="clustal2link", base_command=["clustal2link"], inputs=[ToolInput(tag="in_aln", input_type=String(optional=True), prefix="-aln", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustal2Link_V0_1_0().translate("wdl", allow_empty_container=True)

