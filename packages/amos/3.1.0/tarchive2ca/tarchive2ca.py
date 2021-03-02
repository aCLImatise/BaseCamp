from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Tarchive2Ca_V0_1_0 = CommandToolBuilder(tool="tarchive2ca", base_command=["tarchive2ca"], inputs=[ToolInput(tag="in_prefix_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix for the output files")), ToolInput(tag="in_file_containing_ranges", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="file containing clear ranges for the reads.  If this file\nis provided, any sequence that does not appear in it is excluded\nfrom the output.")), ToolInput(tag="in_tabdelimited_file_libid", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="tab-delimited file of lib_id, mean, stdev"))], outputs=[ToolOutput(tag="out_file_containing_ranges", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_containing_ranges", type_hint=File()), doc=OutputDocumentation(doc="file containing clear ranges for the reads.  If this file\nis provided, any sequence that does not appear in it is excluded\nfrom the output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tarchive2Ca_V0_1_0().translate("wdl", allow_empty_container=True)

