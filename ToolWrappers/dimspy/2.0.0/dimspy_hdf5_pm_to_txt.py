from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Dimspy_Hdf5_Pm_To_Txt_V0_1_0 = CommandToolBuilder(tool="dimspy_hdf5_pm_to_txt", base_command=["dimspy", "hdf5-pm-to-txt"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file that contains a peak matrix object from one\nof the processing steps.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Directory (peaklists) or text file (peak matrix) to\nwrite to.")), ToolInput(tag="in_attribute_name", input_type=String(optional=True), prefix="--attribute_name", doc=InputDocumentation(doc="Type of matrix to print.")), ToolInput(tag="in_class_label_rsd", input_type=String(optional=True), prefix="--class-label-rsd", doc=InputDocumentation(doc="Class label to select samples for RSD calculatons\n(e.g. QC).")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="Values on each line of the file are separated by this\ncharacter.")), ToolInput(tag="in_representation_samples", input_type=String(optional=True), prefix="--representation-samples", doc=InputDocumentation(doc="Should the rows or columns respresent the samples?")), ToolInput(tag="in_comprehensive", input_type=Boolean(optional=True), prefix="--comprehensive", doc=InputDocumentation(doc="Comprehensive version of the peak matrix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Hdf5_Pm_To_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

