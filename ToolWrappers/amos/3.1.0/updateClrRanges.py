from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Updateclrranges_V0_1_0 = CommandToolBuilder(tool="updateClrRanges", base_command=["updateClrRanges"], inputs=[ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqname_do_tend_five_do_tend_three_dot_txt", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Updateclrranges_V0_1_0().translate("wdl", allow_empty_container=True)

