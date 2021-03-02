from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Vsnp_Path_Adder_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_path_adder.py", base_command=["vsnp_path_adder.py"], inputs=[ToolInput(tag="in_cwd", input_type=Directory(optional=True), prefix="--cwd", doc=InputDocumentation(doc="Absolute directory path to be added to find reference\noption files.")), ToolInput(tag="in_show", input_type=Boolean(optional=True), prefix="--show", doc=InputDocumentation(doc="Show available directories.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Path_Adder_Py_V0_1_0().translate("wdl", allow_empty_container=True)

