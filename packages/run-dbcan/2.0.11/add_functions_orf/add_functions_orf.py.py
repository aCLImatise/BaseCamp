from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory

Add_Functions_Orf_Py_V0_1_0 = CommandToolBuilder(tool="add_functions_orf.py", base_command=["add_functions_orf.py"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="Mode")), ToolInput(tag="in_error_exists_make", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="No error if exists; make parent directories as needed")), ToolInput(tag="in_mkdir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_directory_dot_dot_dot", input_type=Directory(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Functions_Orf_Py_V0_1_0().translate("wdl")

