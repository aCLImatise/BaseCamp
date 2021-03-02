from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tag_Sum_V0_1_0 = CommandToolBuilder(tool="tag_sum", base_command=["tag", "sum"], inputs=[ToolInput(tag="in_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="input file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tag_Sum_V0_1_0().translate("wdl", allow_empty_container=True)

