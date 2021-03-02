from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Dimspy_Sample_Filter_V0_1_0 = CommandToolBuilder(tool="dimspy_sample_filter", base_command=["dimspy", "sample-filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file or tab-delimited file that contains a peak\nmatrix.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peak matrix object to.")), ToolInput(tag="in_min_fraction", input_type=Int(optional=True), prefix="--min-fraction", doc=InputDocumentation(doc="Minimum percentage of samples a peak has to be\npresent.")), ToolInput(tag="in_within", input_type=Boolean(optional=True), prefix="--within", doc=InputDocumentation(doc="Apply sample filter within each sample class.")), ToolInput(tag="in_rsd_threshold", input_type=String(optional=True), prefix="--rsd-threshold", doc=InputDocumentation(doc="Peaks where the associated QC peaks are above this\nthreshold will be removed.")), ToolInput(tag="in_qc_label", input_type=String(optional=True), prefix="--qc-label", doc=InputDocumentation(doc="Class label for QCs")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Tab delimited file with at least two columns named\n'filename' and 'classLabel'.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Sample_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

