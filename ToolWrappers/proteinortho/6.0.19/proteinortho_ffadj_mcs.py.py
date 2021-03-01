from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Proteinortho_Ffadj_Mcs_Py_V0_1_0 = CommandToolBuilder(tool="proteinortho_ffadj_mcs.py", base_command=["proteinortho_ffadj_mcs.py"], inputs=[ToolInput(tag="in_repeat_matching", input_type=Int(optional=True), prefix="--repeat-matching", doc=InputDocumentation(doc="match N repetitions (default: 0)")), ToolInput(tag="in_min_cs_size", input_type=Int(optional=True), prefix="--min-cs-size", doc=InputDocumentation(doc="minimal cs size (default: 1)")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Ffadj_Mcs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

