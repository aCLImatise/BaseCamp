from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Validate_Gtf_Pl_V0_1_0 = CommandToolBuilder(tool="validate_gtf.pl", base_command=["validate_gtf.pl"], inputs=[ToolInput(tag="in_output_transcript_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc=": output transcript file")), ToolInput(tag="in_create_gtf_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": create a fixed gtf file (This may not be possible.\nAlways check the 'fixed' file)")), ToolInput(tag="in_sets_maximum_number", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc=": sets the maximum number of detailed error messages to return per\nerror to <count> (default is 5).")), ToolInput(tag="in_output_list_inframe", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": output list of inframe stop genes.")), ToolInput(tag="in_suppress_warnings_missing", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": suppress warnings about missing start/stop")), ToolInput(tag="in_suppress_warnings_bad", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": suppress warnings about bad splice site sequence")), ToolInput(tag="in_output_list_", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc=": output a list of bad genes for 'super-clean' training set")), ToolInput(tag="in_output_list_training", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": output a list of bad genes for training applications")), ToolInput(tag="in_output_list_evaluation", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": output a list of bad genes for evaluation purposes")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_transcript_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_transcript_file", type_hint=File()), doc=OutputDocumentation(doc=": output transcript file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Gtf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

