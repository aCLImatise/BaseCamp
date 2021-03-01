from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Simulate_Errors_Py_Input_Fasta_V0_1_0 = CommandToolBuilder(tool="simulate_errors.py_input_fasta", base_command=["simulate_errors.py", "input_fasta"], inputs=[ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_simulate_errors_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Errors_Py_Input_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

