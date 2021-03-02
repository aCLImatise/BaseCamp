from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parseheaders_Py_Reheader_Pass_V0_1_0 = CommandToolBuilder(tool="ParseHeaders.py_reheader_pass", base_command=["ParseHeaders.py", "reheader-pass"], inputs=[ToolInput(tag="in_parse_headers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parseheaders_Py_Reheader_Pass_V0_1_0().translate("wdl", allow_empty_container=True)

