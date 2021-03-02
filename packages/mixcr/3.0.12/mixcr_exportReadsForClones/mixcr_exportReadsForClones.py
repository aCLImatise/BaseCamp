from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mixcr_Exportreadsforclones_V0_1_0 = CommandToolBuilder(tool="mixcr_exportReadsForClones", base_command=["mixcr", "exportReadsForClones"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose warning messages.")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Force overwrite of output file(s).")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--no-warnings", doc=InputDocumentation(doc="Suppress all warning messages.")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="--separate", doc=InputDocumentation(doc="Create separate files for each clone. File or pair of '_R1'/'_R2' files, with\n'_clnN' suffix, where N is clone index, will be created for each clone\nindex.\n")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="")), ToolInput(tag="in_fs", input_type=Boolean(optional=True), prefix="-fs", doc=InputDocumentation(doc="")), ToolInput(tag="in_scr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_export_reads_for_clones", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwrite of output file(s)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Exportreadsforclones_V0_1_0().translate("wdl", allow_empty_container=True)

