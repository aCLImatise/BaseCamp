from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Add_Errors_Py_Input_Fasta_V0_1_0 = CommandToolBuilder(tool="add_errors.py_input_fasta", base_command=["add_errors.py", "input_fasta"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_add_errors_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Errors_Py_Input_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

