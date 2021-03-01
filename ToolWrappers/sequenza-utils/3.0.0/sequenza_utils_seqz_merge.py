from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sequenza_Utils_Seqz_Merge_V0_1_0 = CommandToolBuilder(tool="sequenza_utils_seqz_merge", base_command=["sequenza-utils", "seqz_merge"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. For gzip compressed output name the file\nending in .gz. Default STDOUT")), ToolInput(tag="in_seq_zone", input_type=Int(optional=True), prefix="--seqz1", doc=InputDocumentation(doc="First input file. If both input files contain the same\nline, the information in the first file will be used")), ToolInput(tag="in_seq_z_two", input_type=Int(optional=True), prefix="--seqz2", doc=InputDocumentation(doc="Second input file")), ToolInput(tag="in_tab_ix", input_type=File(optional=True), prefix="--tabix", doc=InputDocumentation(doc="Path of the tabix binary. Default 'tabix'\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. For gzip compressed output name the file\nending in .gz. Default STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequenza_Utils_Seqz_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

