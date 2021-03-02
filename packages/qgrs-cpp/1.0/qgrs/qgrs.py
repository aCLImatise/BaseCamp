from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Qgrs_V0_1_0 = CommandToolBuilder(tool="qgrs", base_command=["qgrs"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="-csv", doc=InputDocumentation(doc="output in csv mode")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="-json", doc=InputDocumentation(doc="output in JSON mode")), ToolInput(tag="in_read_input_specified", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[input filename]   read input from a file as specified (defaults to stdin)")), ToolInput(tag="in_write_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[output filename]  write output to file as specified (defaults to stdout)")), ToolInput(tag="in_filter_output_number", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[n]                filter output to QGRS with number tetrads equal to or greater than n (defaults to 2)")), ToolInput(tag="in_filter_gscore_equal", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[n]                filter output to QGRS with g-score equal to or greater than n (defaults to 17)")), ToolInput(tag="in_replace_g_characters", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[c]                replace all G characters within tetrads with given character.")), ToolInput(tag="in_include_overlapping_qgrs", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="include overlapping QGRS in output (very large outputs may be generated)")), ToolInput(tag="in_no_title", input_type=Boolean(optional=True), prefix="-notitle", doc=InputDocumentation(doc="omit column titles in output (does not apply to JSON)"))], outputs=[ToolOutput(tag="out_write_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_output_file", type_hint=File()), doc=OutputDocumentation(doc="[output filename]  write output to file as specified (defaults to stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qgrs_V0_1_0().translate("wdl", allow_empty_container=True)

