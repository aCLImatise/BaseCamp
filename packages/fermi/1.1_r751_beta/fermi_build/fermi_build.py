from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Fermi_Build_V0_1_0 = CommandToolBuilder(tool="fermi_build", base_command=["fermi", "build"], inputs=[ToolInput(tag="in_use_small_marker", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="use a small marker per 2^(INT+3) bytes [3]")), ToolInput(tag="in_force_overwrite_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="force to overwrite the output file (effective with -o)")), ToolInput(tag="in_append_fmindex_existing", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="append the FM-index to the existing FILE [null]")), ToolInput(tag="in_trim_read_int", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="trim read down to INT bp [inf]")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name [null]")), ToolInput(tag="in_trim_bp_reads", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="do not trim 1bp for reads whose forward and reverse are identical")), ToolInput(tag="in_number_symbols_process", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="number of symbols to process at a time [250000000]")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_force_overwrite_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_file", type_hint=File()), doc=OutputDocumentation(doc="force to overwrite the output file (effective with -o)")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name [null]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Build_V0_1_0().translate("wdl", allow_empty_container=True)

