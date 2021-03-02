from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mmseqs_Createtsv_V0_1_0 = CommandToolBuilder(tool="mmseqs_createtsv", base_command=["mmseqs", "createtsv"], inputs=[ToolInput(tag="in_first_seq_as_repr", input_type=Boolean(optional=True), prefix="--first-seq-as-repr", doc=InputDocumentation(doc="false           Use the first sequence of the clustering result as representative sequence")), ToolInput(tag="in_target_column", input_type=Boolean(optional=True), prefix="--target-column", doc=InputDocumentation(doc="1               Select a target column (default 1), 0 if no target id exists.")), ToolInput(tag="in_full_header", input_type=Boolean(optional=True), prefix="--full-header", doc=InputDocumentation(doc="false           Replace DB ID by its corresponding Full Header")), ToolInput(tag="in_db_output", input_type=File(optional=True), prefix="--db-output", doc=InputDocumentation(doc="false           Output a result db instead of a text file")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_db_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_db_output", type_hint=File()), doc=OutputDocumentation(doc="false           Output a result db instead of a text file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createtsv_V0_1_0().translate("wdl", allow_empty_container=True)

