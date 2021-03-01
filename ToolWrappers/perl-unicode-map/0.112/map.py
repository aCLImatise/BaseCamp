from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Map_V0_1_0 = CommandToolBuilder(tool="map", base_command=["map"], inputs=[ToolInput(tag="in_from", input_type=Int(optional=True), prefix="--from", doc=InputDocumentation(doc="Encoding of input files (default 'ISO-8859-1')")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="Lists available character sets and their alias names.")), ToolInput(tag="in_to", input_type=Boolean(optional=True), prefix="--to", doc=InputDocumentation(doc="s  Encoding of output files (default 'ISO-8859-1')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_V0_1_0().translate("wdl", allow_empty_container=True)

