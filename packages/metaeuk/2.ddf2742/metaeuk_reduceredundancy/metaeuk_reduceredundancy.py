from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Metaeuk_Reduceredundancy_V0_1_0 = CommandToolBuilder(tool="metaeuk_reduceredundancy", base_command=["metaeuk", "reduceredundancy"], inputs=[ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc="allow predictions to overlap another on the same strand. when not allowed (default), only the prediction with better E-value will be retained [0,1] [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [8]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaeuk_Reduceredundancy_V0_1_0().translate("wdl", allow_empty_container=True)

