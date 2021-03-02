from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fix_Af1_Py_V0_1_0 = CommandToolBuilder(tool="fix_AF1.py", base_command=["fix_AF1.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fix_Af1_Py_V0_1_0().translate("wdl", allow_empty_container=True)

