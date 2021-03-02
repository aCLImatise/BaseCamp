from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Dimspy_Blank_Filter_V0_1_0 = CommandToolBuilder(tool="dimspy_blank_filter", base_command=["dimspy", "blank-filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file or tab-delimited file that contains a peak\nmatrix (object).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peak matrix object to.")), ToolInput(tag="in_blank_label", input_type=String(optional=True), prefix="--blank-label", doc=InputDocumentation(doc="Class label for blanks.")), ToolInput(tag="in_min_fraction", input_type=Int(optional=True), prefix="--min-fraction", doc=InputDocumentation(doc="Minium fold change blank versus sample.")), ToolInput(tag="in_function", input_type=String(optional=True), prefix="--function", doc=InputDocumentation(doc="Select function to calculate blank intenstiy.")), ToolInput(tag="in_min_fold_change", input_type=Int(optional=True), prefix="--min-fold-change", doc=InputDocumentation(doc="Minium fold change blank versus sample.")), ToolInput(tag="in_remove_blank_samples", input_type=Boolean(optional=True), prefix="--remove-blank-samples", doc=InputDocumentation(doc="Remove blank samples from peak matrix.")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Tab delimited file with at least two columns named\n'filename' and 'classLabel'.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Blank_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

