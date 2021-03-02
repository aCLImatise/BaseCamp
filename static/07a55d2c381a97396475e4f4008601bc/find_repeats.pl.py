from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Find_Repeats_Pl_V0_1_0 = CommandToolBuilder(tool="find_repeats.pl", base_command=["find-repeats.pl"], inputs=[ToolInput(tag="in_min_length", input_type=Boolean(optional=True), prefix="--min-length", doc=InputDocumentation(doc=": Minimum length of repeat region (150).")), ToolInput(tag="in_min_pid", input_type=Boolean(optional=True), prefix="--min-pid", doc=InputDocumentation(doc=": Minimum PID of repeat region (90).")), ToolInput(tag="in_keep_temp", input_type=Boolean(optional=True), prefix="--keep-temp", doc=InputDocumentation(doc=": Keep around temporary nucmer/coords files (no)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Repeats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

