from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bamstats_Py_V0_1_0 = CommandToolBuilder(tool="bamstats.py", base_command=["bamstats.py"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_statistics", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamstats_Py_V0_1_0().translate("wdl", allow_empty_container=True)

