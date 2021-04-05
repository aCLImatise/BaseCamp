from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Poppunk_Pickle_Fix_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_pickle_fix.py", base_command=["poppunk_pickle_fix.py"], inputs=[ToolInput(tag="in_pickle_fix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pickle", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Pickle_Fix_Py_V0_1_0().translate("wdl")

