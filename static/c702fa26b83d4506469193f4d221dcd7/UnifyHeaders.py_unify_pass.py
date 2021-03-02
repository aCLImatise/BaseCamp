from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Unifyheaders_Py_Unify_Pass_V0_1_0 = CommandToolBuilder(tool="UnifyHeaders.py_unify_pass", base_command=["UnifyHeaders.py", "unify-pass"], inputs=[ToolInput(tag="in_unify_headers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unifyheaders_Py_Unify_Pass_V0_1_0().translate("wdl")

