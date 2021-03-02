from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hubward_Liftover_V0_1_0 = CommandToolBuilder(tool="hubward_liftover", base_command=["hubward", "liftover"], inputs=[ToolInput(tag="in_from_assembly", input_type=String(optional=True), prefix="--from_assembly", doc=InputDocumentation(doc="Source assembly (default: -)")), ToolInput(tag="in_to_assembly", input_type=String(optional=True), prefix="--to_assembly", doc=InputDocumentation(doc="Destination assembly (default: -)\n")), ToolInput(tag="in_dirname", input_type=String(), position=0, doc=InputDocumentation(doc="Single study to liftover")), ToolInput(tag="in_newdir", input_type=String(), position=1, doc=InputDocumentation(doc="Destination directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hubward_Liftover_V0_1_0().translate("wdl", allow_empty_container=True)

