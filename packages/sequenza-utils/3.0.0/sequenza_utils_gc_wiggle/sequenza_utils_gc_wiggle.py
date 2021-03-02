from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sequenza_Utils_Gc_Wiggle_V0_1_0 = CommandToolBuilder(tool="sequenza_utils_gc_wiggle", base_command=["sequenza-utils", "gc_wiggle"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="the fasta file. It can be a file name or '-' to use\nSTDIN")), ToolInput(tag="in_output_file_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file '-' for STDOUT")), ToolInput(tag="in_window_size_calculate", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="The window size to calculate the GC-content percentage"))], outputs=[ToolOutput(tag="out_output_file_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stdout", type_hint=File()), doc=OutputDocumentation(doc="Output file '-' for STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequenza_Utils_Gc_Wiggle_V0_1_0().translate("wdl", allow_empty_container=True)

