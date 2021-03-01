from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tee_V0_1_0 = CommandToolBuilder(tool="tee", base_command=["tee"], inputs=[ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="append to the given FILEs, do not overwrite")), ToolInput(tag="in_ignore_interrupts", input_type=Boolean(optional=True), prefix="--ignore-interrupts", doc=InputDocumentation(doc="ignore interrupt signals")), ToolInput(tag="in_diagnose_errors_writing", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="diagnose errors writing to non pipes")), ToolInput(tag="in_output_error", input_type=Boolean(optional=True), prefix="--output-error", doc=InputDocumentation(doc="[=MODE]   set behavior on write error.  See MODE below"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tee_V0_1_0().translate("wdl", allow_empty_container=True)

