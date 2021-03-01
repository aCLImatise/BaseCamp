from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Geo_Generate_Sample_Sheet_Py_V0_1_0 = CommandToolBuilder(tool="geo_generate_sample_sheet.py", base_command=["geo_generate_sample_sheet.py"], inputs=[ToolInput(tag="in_series_matrix_file", input_type=File(optional=True), prefix="--series-matrix-file", doc=InputDocumentation(doc="The GEO series matrix file.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The output file.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path of log file (if specified, report to stdout AND file.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Only output errors and warnings.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output. Ignored if --quiet is specified."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geo_Generate_Sample_Sheet_Py_V0_1_0().translate("wdl", allow_empty_container=True)

