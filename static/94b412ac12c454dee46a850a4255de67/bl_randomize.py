from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bl_Randomize_V0_1_0 = CommandToolBuilder(tool="bl_randomize", base_command=["bl-randomize"], inputs=[ToolInput(tag="in_specify_multiple_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple INPUT files")), ToolInput(tag="in_specify_multiple_output_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="specify multiple OUTPUT files")), ToolInput(tag="in_use_order_order", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="use the order in READ-ORDER instead of a random order")), ToolInput(tag="in_write_random_order", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="write the random order to WRITE-ORDER")), ToolInput(tag="in_randomize", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Randomize_V0_1_0().translate("wdl", allow_empty_container=True)

