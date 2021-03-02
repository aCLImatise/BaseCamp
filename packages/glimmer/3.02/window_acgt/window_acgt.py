from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Window_Acgt_V0_1_0 = CommandToolBuilder(tool="window_acgt", base_command=["window-acgt"], inputs=[ToolInput(tag="in_percentoutput_percentages_counts", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="or  --percent\nOutput percentages instead of counts\n")), ToolInput(tag="in_window_start", input_type=String(), position=0, doc=InputDocumentation(doc="window-len  A's C's G's T's #other %GC"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Window_Acgt_V0_1_0().translate("wdl", allow_empty_container=True)

