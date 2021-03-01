from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Lyner_Targets_V0_1_0 = CommandToolBuilder(tool="lyner_targets", base_command=["lyner", "targets"], inputs=[ToolInput(tag="in_from_file", input_type=File(optional=True), prefix="--from-file", doc=InputDocumentation(doc="[exclude|intersect]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Targets_V0_1_0().translate("wdl", allow_empty_container=True)

