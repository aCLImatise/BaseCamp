from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastqsimulate_Sort_V0_1_0 = CommandToolBuilder(tool="fastqSimulate_sort", base_command=["fastqSimulate-sort"], inputs=[ToolInput(tag="in_o_two", input_type=Int(optional=True), prefix="-o2", doc=InputDocumentation(doc="")), ToolInput(tag="in_o_one", input_type=Int(optional=True), prefix="-o1", doc=InputDocumentation(doc="")), ToolInput(tag="in_i_two", input_type=Int(optional=True), prefix="-i2", doc=InputDocumentation(doc="")), ToolInput(tag="in_i_one", input_type=Int(optional=True), prefix="-i1", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqsimulate_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

