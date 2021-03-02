from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Cromshell_V0_1_0 = CommandToolBuilder(tool="cromshell", base_command=["cromshell"], inputs=[ToolInput(tag="in_set_curl_connect", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Set the curl connect timeout to TIMEOUT seconds.\nAlso sets the curl max timeout to 2*TIMEOUT seconds.\nTIMEOUT must be an integer.")), ToolInput(tag="in_wait_workflow_transition", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Wait for workflow to transition from 'Submitted' to some other status\nbefore cromshell exits")), ToolInput(tag="in_enable_prettyprinting", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Enable pretty-printing.")), ToolInput(tag="in_expand_subworkflow_information", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Expand sub-workflow information.")), ToolInput(tag="in_color_output_completion", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Color the output by completion status.")), ToolInput(tag="in_check_completion_status", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Check completion status of all unfinished jobs.")), ToolInput(tag="in_provided_only_remove", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="If provided, will only remove jobs with the given STATUS from the local list.")), ToolInput(tag="in_included_wdl_zip_file", input_type=String(), position=0, doc=InputDocumentation(doc="Zip file containing any WDL files included in the input WDL")), ToolInput(tag="in_jobs_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Query workflow status:")), ToolInput(tag="in_email", input_type=String(), position=0, doc=InputDocumentation(doc="Email address to which to send the notification.")), ToolInput(tag="in_daemon_server", input_type=String(), position=1, doc=InputDocumentation(doc="Server on which to run the notification daemon.")), ToolInput(tag="in_anything_but_zero", input_type=String(), position=0, doc=InputDocumentation(doc="FAILURE/ERROR"))], outputs=[], container="quay.io/biocontainers/cromshell:0.4.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cromshell_V0_1_0().translate("wdl")

