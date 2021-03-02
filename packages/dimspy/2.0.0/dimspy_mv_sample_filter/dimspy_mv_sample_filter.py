from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Dimspy_Mv_Sample_Filter_V0_1_0 = CommandToolBuilder(tool="dimspy_mv_sample_filter", base_command=["dimspy", "mv-sample-filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file file that contains a peak matrix object.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peak matrix object to.")), ToolInput(tag="in_max_fraction", input_type=Int(optional=True), prefix="--max-fraction", doc=InputDocumentation(doc="Maximum percentage of missing values allowed across a\nsample.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Mv_Sample_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

