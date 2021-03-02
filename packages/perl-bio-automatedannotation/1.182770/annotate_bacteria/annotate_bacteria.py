from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Annotate_Bacteria_V0_1_0 = CommandToolBuilder(tool="annotate_bacteria", base_command=["annotate_bacteria"], inputs=[ToolInput(tag="in_clusters", input_type=String(), position=0, doc=InputDocumentation(doc="Conserved domain database")), ToolInput(tag="in_tigrfams", input_type=String(), position=1, doc=InputDocumentation(doc="pfam (A)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Bacteria_V0_1_0().translate("wdl", allow_empty_container=True)

