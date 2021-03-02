from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgi_Load_V0_1_0 = CommandToolBuilder(tool="rgi_load", base_command=["rgi_load"], inputs=[ToolInput(tag="in_a_file", input_type=File(optional=True), prefix="--afile", doc=InputDocumentation(doc="must be a card database json file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Load_V0_1_0().translate("wdl", allow_empty_container=True)

