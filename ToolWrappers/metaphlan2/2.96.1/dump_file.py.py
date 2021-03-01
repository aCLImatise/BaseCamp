from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dump_File_Py_V0_1_0 = CommandToolBuilder(tool="dump_file.py", base_command=["dump_file.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dump_File_Py_V0_1_0().translate("wdl", allow_empty_container=True)

