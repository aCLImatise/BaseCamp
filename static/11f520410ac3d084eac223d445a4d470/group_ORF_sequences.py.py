from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Group_Orf_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="group_ORF_sequences.py", base_command=["group_ORF_sequences.py"], inputs=[ToolInput(tag="in_is_p_bid", input_type=Boolean(optional=True), prefix="--is_pbid", doc=InputDocumentation(doc="")), ToolInput(tag="in_de_duplicate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_orf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_faa", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_faa", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Group_Orf_Sequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

