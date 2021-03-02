from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dimspy_Remove_Samples_V0_1_0 = CommandToolBuilder(tool="dimspy_remove_samples", base_command=["dimspy", "remove-samples"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file that contains a peak matrix object or list\nof peaklist objects from one of the processing steps.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peak matrix object or peaklist\nobjects to.")), ToolInput(tag="in_sample_names", input_type=String(optional=True), prefix="--sample-names", doc=InputDocumentation(doc="Sample name(s)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Remove_Samples_V0_1_0().translate("wdl", allow_empty_container=True)

