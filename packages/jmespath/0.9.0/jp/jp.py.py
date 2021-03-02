from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Jp_Py_V0_1_0 = CommandToolBuilder(tool="jp.py", base_command=["jp.py"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), prefix="--filename", doc=InputDocumentation(doc="The filename containing the input data. If a filename\nis not given then data is read from stdin.")), ToolInput(tag="in_ast", input_type=Boolean(optional=True), prefix="--ast", doc=InputDocumentation(doc="Pretty print the AST, do not search the data.")), ToolInput(tag="in_expression", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

