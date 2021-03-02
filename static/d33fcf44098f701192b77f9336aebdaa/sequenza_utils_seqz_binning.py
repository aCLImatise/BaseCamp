from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sequenza_Utils_Seqz_Binning_V0_1_0 = CommandToolBuilder(tool="sequenza_utils_seqz_binning", base_command=["sequenza-utils", "seqz_binning"], inputs=[ToolInput(tag="in_seq_z", input_type=File(optional=True), prefix="--seqz", doc=InputDocumentation(doc="A seqz file.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Window size used for binning the original seqz file.\nDefault is 50.")), ToolInput(tag="in_output_file_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file '-' for STDOUT")), ToolInput(tag="in_tab_ix", input_type=File(optional=True), prefix="--tabix", doc=InputDocumentation(doc="Path of the tabix binary. Default 'tabix'\n"))], outputs=[ToolOutput(tag="out_output_file_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stdout", type_hint=File()), doc=OutputDocumentation(doc="Output file '-' for STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequenza_Utils_Seqz_Binning_V0_1_0().translate("wdl", allow_empty_container=True)

