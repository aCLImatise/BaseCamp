from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Funnel_Gce_V0_1_0 = CommandToolBuilder(tool="funnel_gce", base_command=["funnel", "gce"], inputs=[ToolInput(tag="in_run", input_type=String(), position=0, doc=InputDocumentation(doc="Flags:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funnel_Gce_V0_1_0().translate("wdl", allow_empty_container=True)

