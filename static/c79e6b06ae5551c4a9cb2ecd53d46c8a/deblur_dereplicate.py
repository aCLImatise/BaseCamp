from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Deblur_Dereplicate_V0_1_0 = CommandToolBuilder(tool="deblur_dereplicate", base_command=["deblur", "dereplicate"], inputs=[ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="Discard sequences with an abundance value smaller\nthan min-size  [default: 2]")), ToolInput(tag="in_log_level", input_type=Int(optional=True), prefix="--log-level", doc=InputDocumentation(doc="RANGE  Level of messages for log file(range 1-debug to")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="log file name  [default: deblur.log]")), ToolInput(tag="in_seqs_fp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fp", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Dereplicate_V0_1_0().translate("wdl", allow_empty_container=True)

