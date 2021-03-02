from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parseheaders_Py_Headers_V0_1_0 = CommandToolBuilder(tool="ParseHeaders.py_headers", base_command=["ParseHeaders.py", "headers"], inputs=[ToolInput(tag="in_parse_headers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parseheaders_Py_Headers_V0_1_0().translate("wdl")

