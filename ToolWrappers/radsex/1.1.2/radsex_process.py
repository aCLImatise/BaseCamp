from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Radsex_Process_V0_1_0 = CommandToolBuilder(tool="radsex_process", base_command=["radsex", "process"], inputs=[ToolInput(tag="in_input_dir", input_type=Boolean(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="TEXT:DIR                  Path to a directory contains demultiplexed sequence files              [REQUIRED]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="TEXT                      Path to the output file (table of marker depths in each individual)    [REQUIRED]")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="UINT:INT in [1 - 9999]    Number of threads to use                                               [1]")), ToolInput(tag="in_min_depth", input_type=Boolean(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="UINT:INT in [1 - 9999]    Minimum depth in at least one individual to retain a marker            [1]"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="TEXT                      Path to the output file (table of marker depths in each individual)    [REQUIRED]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radsex_Process_V0_1_0().translate("wdl", allow_empty_container=True)

