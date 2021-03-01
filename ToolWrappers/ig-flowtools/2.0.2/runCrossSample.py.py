from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Runcrosssample_Py_V0_1_0 = CommandToolBuilder(tool="runCrossSample.py", base_command=["runCrossSample.py"], inputs=[ToolInput(tag="in_file_locations_flow", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File locations for flow text files.")), ToolInput(tag="in_filenames", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Filenames")), ToolInput(tag="in_file_location_mfi_text", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="File location for the MFI text file.")), ToolInput(tag="in_path_directory_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to the directory for the output files.")), ToolInput(tag="in_what_calculate_centroids", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="what to calculate for centroids.")), ToolInput(tag="in_file_location_summary", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="File location for the summary statistics.")), ToolInput(tag="in_file_location_mfi_summary", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="File location for the MFI summary statistics.")), ToolInput(tag="in_file_location_stats", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="File location for stats on all markers."))], outputs=[ToolOutput(tag="out_path_directory_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_directory_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the directory for the output files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runcrosssample_Py_V0_1_0().translate("wdl", allow_empty_container=True)

