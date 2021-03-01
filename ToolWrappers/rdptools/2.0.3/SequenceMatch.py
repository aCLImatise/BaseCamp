from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sequencematch_V0_1_0 = CommandToolBuilder(tool="SequenceMatch", base_command=["SequenceMatch"], inputs=[ToolInput(tag="in_seq_match_main", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_train_vertical_line_seq_match", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequencematch_V0_1_0().translate("wdl", allow_empty_container=True)

