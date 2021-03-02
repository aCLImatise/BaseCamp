from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sum_Prob_Py_V0_1_0 = CommandToolBuilder(tool="sum_prob.py", base_command=["sum_prob.py"], inputs=[ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="any probabilities below this threshold are\nset to the threshold value. (default 1e-18)")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="input file containing probabilities (reads\nfrom stdin by default)")), ToolInput(tag="in_debug_level", input_type=Boolean(optional=True), prefix="--debug_level", doc=InputDocumentation(doc="determines how much debug output.")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_prob", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sum_Prob_Py_V0_1_0().translate("wdl", allow_empty_container=True)

