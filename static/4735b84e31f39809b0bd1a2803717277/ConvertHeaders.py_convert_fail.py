from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertheaders_Py_Convert_Fail_V0_1_0 = CommandToolBuilder(tool="ConvertHeaders.py_convert_fail", base_command=["ConvertHeaders.py", "convert-fail"], inputs=[ToolInput(tag="in_convert_headers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertheaders_Py_Convert_Fail_V0_1_0().translate("wdl")

