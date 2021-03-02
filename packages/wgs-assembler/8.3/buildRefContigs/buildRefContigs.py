from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Buildrefcontigs_V0_1_0 = CommandToolBuilder(tool="buildRefContigs", base_command=["buildRefContigs"], inputs=[ToolInput(tag="in_min_overlap", input_type=String(optional=True), prefix="-minoverlap", doc=InputDocumentation(doc="fragments must overlap by at least this much")), ToolInput(tag="in_build_unitigs_input", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="build unitigs, for input to cgw")), ToolInput(tag="in_build_scaffolds_input", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="build scaffolds, for input to terminator"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildrefcontigs_V0_1_0().translate("wdl", allow_empty_container=True)

