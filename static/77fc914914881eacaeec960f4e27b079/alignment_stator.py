from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Alignment_Stator_V0_1_0 = CommandToolBuilder(tool="alignment_stator", base_command=["alignment_stator"], inputs=[ToolInput(tag="in_pause_batch_runsm", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="pause for batch runs[32;1m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignment_Stator_V0_1_0().translate("wdl", allow_empty_container=True)

