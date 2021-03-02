from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Shannon_Py_V0_1_0 = CommandToolBuilder(tool="shannon.py", base_command=["shannon.py"], inputs=[ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shannon_Py_V0_1_0().translate("wdl", allow_empty_container=True)

