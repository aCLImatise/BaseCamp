from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Segtools_Compare_V0_1_0 = CommandToolBuilder(tool="segtools_compare", base_command=["segtools-compare"], inputs=[ToolInput(tag="in_edit_distance", input_type=Boolean(optional=True), prefix="--edit-distance", doc=InputDocumentation(doc="Measure the base-wise edit distance between the two\nspecified segmentations")), ToolInput(tag="in_quick", input_type=Boolean(optional=True), prefix="--quick", doc=InputDocumentation(doc="Compute values only for one chromosome.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_segmentation", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Compare_V0_1_0().translate("wdl", allow_empty_container=True)

