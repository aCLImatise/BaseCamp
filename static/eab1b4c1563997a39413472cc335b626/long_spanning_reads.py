from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Long_Spanning_Reads_V0_1_0 = CommandToolBuilder(tool="long_spanning_reads", base_command=["long_spanning_reads"], inputs=[ToolInput(tag="in_reads_dot_fa_slashdot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Long_Spanning_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

