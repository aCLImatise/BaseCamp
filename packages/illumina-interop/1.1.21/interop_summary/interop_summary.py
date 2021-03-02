from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Interop_Summary_V0_1_0 = CommandToolBuilder(tool="interop_summary", base_command=["interop_summary"], inputs=[ToolInput(tag="in_level", input_type=Boolean(optional=True), prefix="--level", doc=InputDocumentation(doc="[5]: Level of summary information: 0: total, 1: non-index, 2: Read, 3: Lane, 4: Surface")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="[0]: Format output as CSV only")), ToolInput(tag="in_option_two", input_type=Int(optional=True), prefix="--option2", doc=InputDocumentation(doc="")), ToolInput(tag="in_option_one", input_type=Int(optional=True), prefix="--option1", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_folder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Summary_V0_1_0().translate("wdl")

