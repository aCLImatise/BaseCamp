from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Tobias_Log2Table_V0_1_0 = CommandToolBuilder(tool="TOBIAS_Log2Table", base_command=["TOBIAS", "Log2Table"], inputs=[ToolInput(tag="in_log_files", input_type=Boolean(optional=True), prefix="--logfiles", doc=InputDocumentation(doc="[ [ ...]]  Logfiles from PlotAggregate")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for tables (default: current dir)")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix of output files"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for tables (default: current dir)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Log2Table_V0_1_0().translate("wdl", allow_empty_container=True)

