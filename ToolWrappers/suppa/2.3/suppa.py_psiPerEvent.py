from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Suppa_Py_Psiperevent_V0_1_0 = CommandToolBuilder(tool="suppa.py_psiPerEvent", base_command=["suppa.py", "psiPerEvent"], inputs=[ToolInput(tag="in_ioe_file", input_type=File(optional=True), prefix="--ioe-file", doc=InputDocumentation(doc="Input file with the event-transcripts equivalence\n(.ioe format).")), ToolInput(tag="in_expression_file", input_type=File(optional=True), prefix="--expression-file", doc=InputDocumentation(doc="Input transcript expression file.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output psi file.")), ToolInput(tag="in_total_filter", input_type=String(optional=True), prefix="--total-filter", doc=InputDocumentation(doc="Minimum total expression of the transcripts involved\nin the event.")), ToolInput(tag="in_save_tpm_events", input_type=Boolean(optional=True), prefix="--save_tpm_events", doc=InputDocumentation(doc="Boolean. If True, save the TPM of the events in an\nexternal file (Default: False).")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="to choose from DEBUG, INFO, WARNING, ERROR and\nCRITICAL\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output psi file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Suppa_Py_Psiperevent_V0_1_0().translate("wdl", allow_empty_container=True)

