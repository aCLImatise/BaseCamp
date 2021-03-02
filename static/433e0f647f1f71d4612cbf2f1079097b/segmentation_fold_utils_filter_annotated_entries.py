from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Segmentation_Fold_Utils_Filter_Annotated_Entries_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_filter_annotated_entries", base_command=["segmentation-fold-utils", "filter-annotated-entries"], inputs=[ToolInput(tag="in_regex", input_type=File(optional=True), prefix="--regex", doc=InputDocumentation(doc="Regex to capture the targeted location in DBN file\n(default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)' )")), ToolInput(tag="in_dbn_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="BED_INPUT_FILE DBN_OUT")), ToolInput(tag="in_bn_output_file_non_ove", input_type=String(), position=0, doc=InputDocumentation(doc="RLAPPING"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Filter_Annotated_Entries_V0_1_0().translate("wdl", allow_empty_container=True)

