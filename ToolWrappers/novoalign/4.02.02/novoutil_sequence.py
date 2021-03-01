from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Novoutil_Sequence_V0_1_0 = CommandToolBuilder(tool="novoutil_sequence", base_command=["novoutil", "sequence"], inputs=[ToolInput(tag="in_seq_id", input_type=String(), position=2, doc=InputDocumentation(doc="is either a numerical seqidx or a unique string from the desired sequence header.")), ToolInput(tag="in_from", input_type=String(), position=3, doc=InputDocumentation(doc="is first base to extracted (1 based counting).")), ToolInput(tag="in_to", input_type=String(), position=4, doc=InputDocumentation(doc="is the last base to be extracted."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Sequence_V0_1_0().translate("wdl", allow_empty_container=True)

