from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Debug_Targets_V0_1_0 = CommandToolBuilder(tool="gcloud_debug_targets", base_command=["gcloud", "debug", "targets"], inputs=[ToolInput(tag="in_targets", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_debugger_dot", input_type=String(), position=0, doc=InputDocumentation(doc="GCLOUD WIDE FLAGS")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="List debug targets."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Debug_Targets_V0_1_0().translate("wdl", allow_empty_container=True)

