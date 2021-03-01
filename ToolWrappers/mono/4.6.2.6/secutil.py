from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Secutil_V0_1_0 = CommandToolBuilder(tool="secutil", base_command=["secutil"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secutil_V0_1_0().translate("wdl", allow_empty_container=True)

