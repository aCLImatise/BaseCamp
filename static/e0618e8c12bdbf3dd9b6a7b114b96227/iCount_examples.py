from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Examples_V0_1_0 = CommandToolBuilder(tool="iCount_examples", base_command=["iCount", "examples"], inputs=[ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to which example scripts should be copied (default: .)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_i_count_dot_examples_dot_run", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Examples_V0_1_0().translate("wdl", allow_empty_container=True)

