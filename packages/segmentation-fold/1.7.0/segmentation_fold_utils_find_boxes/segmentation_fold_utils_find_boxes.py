from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Segmentation_Fold_Utils_Find_Boxes_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_find_boxes", base_command=["segmentation-fold-utils", "find-boxes"], inputs=[ToolInput(tag="in_box_one", input_type=Int(optional=True), prefix="--box1", doc=InputDocumentation(doc="Sequence of box1 (default = C-box: 'NRUGAUG')")), ToolInput(tag="in_box_two", input_type=Int(optional=True), prefix="--box2", doc=InputDocumentation(doc="Sequence of box2 (default = D-box: 'CUGA')")), ToolInput(tag="in_no_forward", input_type=Boolean(optional=True), prefix="--no-forward", doc=InputDocumentation(doc="Search in the forward direction of the reference")), ToolInput(tag="in_bed_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Find_Boxes_V0_1_0().translate("wdl", allow_empty_container=True)

