from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Seqtk_Subseq_V0_1_0 = CommandToolBuilder(tool="seqtk_subseq", base_command=["seqtk", "subseq"], inputs=[ToolInput(tag="in_tab_delimited_output", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="TAB delimited output")), ToolInput(tag="in_sequence_line_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="sequence line length [0]")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Subseq_V0_1_0().translate("wdl", allow_empty_container=True)

