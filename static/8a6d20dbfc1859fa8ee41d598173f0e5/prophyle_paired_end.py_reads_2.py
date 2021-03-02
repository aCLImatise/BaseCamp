from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Prophyle_Paired_End_Py_Reads_2_V0_1_0 = CommandToolBuilder(tool="prophyle_paired_end.py_reads_2", base_command=["prophyle_paired_end.py", "reads_2"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_prophy_le_paired_enddo_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_two", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Paired_End_Py_Reads_2_V0_1_0().translate("wdl", allow_empty_container=True)

