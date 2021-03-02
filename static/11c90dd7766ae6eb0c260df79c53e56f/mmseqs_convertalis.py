from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Mmseqs_Convertalis_V0_1_0 = CommandToolBuilder(tool="mmseqs_convertalis", base_command=["mmseqs", "convertalis"], inputs=[ToolInput(tag="in_format_mode", input_type=Int(optional=True), prefix="--format-mode", doc=InputDocumentation(doc="output format 0: BLAST-TAB, 1: PAIRWISE, 2: BLAST-TAB + query/db length")), ToolInput(tag="in_no_preload", input_type=Boolean(optional=True), prefix="--no-preload", doc=InputDocumentation(doc="false           Do not preload database")), ToolInput(tag="in_db_output", input_type=File(optional=True), prefix="--db-output", doc=InputDocumentation(doc="false           Output a result db instead of a text file")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_db_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_db_output", type_hint=File()), doc=OutputDocumentation(doc="false           Output a result db instead of a text file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convertalis_V0_1_0().translate("wdl", allow_empty_container=True)

