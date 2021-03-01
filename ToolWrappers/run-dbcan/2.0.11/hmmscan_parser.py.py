from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hmmscan_Parser_Py_V0_1_0 = CommandToolBuilder(tool="hmmscan_parser.py", base_command=["hmmscan-parser.py"], inputs=[ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmscan_Parser_Py_V0_1_0().translate("wdl")

