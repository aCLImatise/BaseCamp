from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Extract_Seq_V0_1_0 = CommandToolBuilder(tool="extract_seq", base_command=["extract_seq"], inputs=[ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file to write sequence to")), ToolInput(tag="in_sequence_name_extract", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Sequence name to extract")), ToolInput(tag="in_do_remove_gaps", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Do not remove gaps")), ToolInput(tag="in_msa_file", input_type=String(), position=0, doc=InputDocumentation(doc="file containing MSA"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file to write sequence to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

