from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Segmentation_Fold_Utils_Filter_By_Energy_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_filter_by_energy", base_command=["segmentation-fold-utils", "filter-by-energy"], inputs=[ToolInput(tag="in_energy", input_type=Float(optional=True), prefix="--energy", doc=InputDocumentation(doc="Entries with transitions with energy smaller than energy\n(< e) or without transitions will be put into\nDBN_OUTPUT_FILE_LARGER_OR_EQUAL and those larger or\nequal (>= e) to DBN_OUTPUT_FILE_SMALLER")), ToolInput(tag="in_utput_file_larger_or_equal", input_type=String(), position=0, doc=InputDocumentation(doc="DBN_OUTPUT_FILE_SMALLER"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Filter_By_Energy_V0_1_0().translate("wdl", allow_empty_container=True)

