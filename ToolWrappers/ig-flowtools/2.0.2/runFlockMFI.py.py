from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Runflockmfi_Py_V0_1_0 = CommandToolBuilder(tool="runFlockMFI.py", base_command=["runFlockMFI.py"], inputs=[ToolInput(tag="in_file_location_fcs", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the FCS file.")), ToolInput(tag="in_run_flock_flock", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Run flock1 or flock2.")), ToolInput(tag="in_what_calculate_centroids", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="what to calculate for centroids.")), ToolInput(tag="in_number_of_bins", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of Bins.")), ToolInput(tag="in_density", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="Density.")), ToolInput(tag="in_file_location_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="File location for the output file.")), ToolInput(tag="in_file_location_output_centroid", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="File location for the output centroid file.")), ToolInput(tag="in_file_location_output_profile", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="File location for the output profile file."))], outputs=[ToolOutput(tag="out_file_location_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_location_output_file", type_hint=File()), doc=OutputDocumentation(doc="File location for the output file.")), ToolOutput(tag="out_file_location_output_centroid", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_location_output_centroid", type_hint=File()), doc=OutputDocumentation(doc="File location for the output centroid file.")), ToolOutput(tag="out_file_location_output_profile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_location_output_profile", type_hint=File()), doc=OutputDocumentation(doc="File location for the output profile file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runflockmfi_Py_V0_1_0().translate("wdl", allow_empty_container=True)

