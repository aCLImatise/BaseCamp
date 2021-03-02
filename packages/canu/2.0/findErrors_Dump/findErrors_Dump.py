from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Finderrors_Dump_V0_1_0 = CommandToolBuilder(tool="findErrors_Dump", base_command=["findErrors-Dump"], inputs=[ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Finderrors_Dump_V0_1_0().translate("wdl", allow_empty_container=True)

