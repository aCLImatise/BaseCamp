from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Gkmpredict_V0_1_0 = CommandToolBuilder(tool="gkmpredict", base_command=["gkmpredict"], inputs=[ToolInput(tag="in_set_level_", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="set the level of verbosity (default: 2)\n0 -- error msgs only (ERROR)\n1 -- warning msgs (WARN)\n2 -- progress msgs at coarse-grained level (INFO)\n3 -- progress msgs at fine-grained level (DEBUG)\n4 -- progress msgs at finer-grained level (TRACE)")), ToolInput(tag="in_set_number_default", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="set the number of threads for parallel calculation, 1, 4, or 16\n(default: 1)\n")), ToolInput(tag="in_test_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gkmpredict_V0_1_0().translate("wdl", allow_empty_container=True)

