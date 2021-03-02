from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Segmentation_Fold_Utils_Extract_Boxed_Sequences_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_extract_boxed_sequences", base_command=["segmentation-fold-utils", "extract-boxed-sequences"], inputs=[ToolInput(tag="in_max_inner_dist", input_type=Int(optional=True), prefix="--max-inner-dist", doc=InputDocumentation(doc="Maximal distance between the boxes\n(default=250bp)")), ToolInput(tag="in_bp_extension", input_type=Int(optional=True), prefix="--bp-extension", doc=InputDocumentation(doc="Extend extracted sequences with this number of\nbases (default: 10bp)")), ToolInput(tag="in_fast_a_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="BED_INPUT_FILE")), ToolInput(tag="in_fast_a_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Extract_Boxed_Sequences_V0_1_0().translate("wdl", allow_empty_container=True)

