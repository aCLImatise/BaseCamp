from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Agg_Ingest2_V0_1_0 = CommandToolBuilder(tool="agg_ingest2", base_command=["agg", "ingest2"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="agg will output output_prefix.bcf and output_prefix.dpt")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="number of compression threads [0]")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="files.txt             plain text file listing agg chunks to merge]")), ToolInput(tag="in_input_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agg_Ingest2_V0_1_0().translate("wdl", allow_empty_container=True)

