from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fpa_Index_V0_1_0 = CommandToolBuilder(tool="fpa_index", base_command=["fpa", "index"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), prefix="--filename", doc=InputDocumentation(doc="Write index of mapping passing filter in path passed as parameter")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of index, only reference read when it's query, target or both of them [default:\nboth]  [possible values: query, target, both]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpa_Index_V0_1_0().translate("wdl", allow_empty_container=True)

