from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ipmach_Py_V0_1_0 = CommandToolBuilder(tool="IPMach.py", base_command=["IPMach.py"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipmach_Py_V0_1_0().translate("wdl", allow_empty_container=True)

