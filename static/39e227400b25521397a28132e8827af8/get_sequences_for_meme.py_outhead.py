from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Sequences_For_Meme_Py_Outhead_V0_1_0 = CommandToolBuilder(tool="get_sequences_for_meme.py_outhead", base_command=["get_sequences_for_meme.py", "outhead"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_get_sequences_for_meme_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_summary_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ec_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_head", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rilseq:0.81--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Sequences_For_Meme_Py_Outhead_V0_1_0().translate("wdl")

