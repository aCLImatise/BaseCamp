from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gdtools_Normalize_V0_1_0 = CommandToolBuilder(tool="gdtools_NORMALIZE", base_command=["gdtools", "NORMALIZE"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (flag)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output Genome Diff file. (DEFAULT=output.gd)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_reassign_ids", input_type=Boolean(optional=True), prefix="--reassign-ids", doc=InputDocumentation(doc="reassign ids to lowest numbers possible.")), ToolInput(tag="in_repeat_adjacent", input_type=Boolean(optional=True), prefix="--repeat-adjacent", doc=InputDocumentation(doc="mark repeat-region adjacent, mediated, and between mutations.")), ToolInput(tag="in_dont_check_apply", input_type=Boolean(optional=True), prefix="--dont-check-apply", doc=InputDocumentation(doc="skip step that checks consistency of normalize using APPLY."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output Genome Diff file. (DEFAULT=output.gd)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Normalize_V0_1_0().translate("wdl", allow_empty_container=True)

