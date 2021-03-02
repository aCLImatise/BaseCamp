from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Ranksum_Test_V0_1_0 = CommandToolBuilder(tool="ranksum_test", base_command=["ranksum_test"], inputs=[ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="--p-value", doc=InputDocumentation(doc="|0|1|2|3 (-1=left, 0=one-tailed,1=right,\n2=two-tailed, 3=all (default))")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="|2|3|4 (default = 2)")), ToolInput(tag="in_n", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ranksum_Test_V0_1_0().translate("wdl", allow_empty_container=True)

