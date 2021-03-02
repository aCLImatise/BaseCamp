from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Gen_Rand_Samp_Py_V0_1_0 = CommandToolBuilder(tool="gen_rand_samp.py", base_command=["gen_rand_samp.py"], inputs=[ToolInput(tag="in_fastq_filenames_separated", input_type=Boolean(optional=True), prefix="--1", doc=InputDocumentation(doc="Fastq filenames separated by commas that contain the first")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Base output directory.")), ToolInput(tag="in_debug_level", input_type=Boolean(optional=True), prefix="--debug_level", doc=InputDocumentation(doc="determines how much debug output."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Base output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Rand_Samp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

