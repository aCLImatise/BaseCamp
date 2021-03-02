from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Toil_Wdl_Runner_V0_1_0 = CommandToolBuilder(tool="toil_wdl_runner", base_command=["toil-wdl-runner"], inputs=[ToolInput(tag="in_job_store", input_type=Directory(optional=True), prefix="--jobStore", doc=InputDocumentation(doc="Optionally specify the directory that outputs are\nwritten to. Default is the current working dir.")), ToolInput(tag="in_dev_mode", input_type=File(optional=True), prefix="--dev_mode", doc=InputDocumentation(doc="1. Creates 'AST.out', which holds the printed AST and\n'mappings.out', which holds the parsed task, workflow\ndictionaries that were generated. 2. Saves the\ncompiled toil script generated from the wdl/json files\nfrom deletion. 3. Skips autorunning the compiled\npython file.")), ToolInput(tag="in_docker_user", input_type=String(optional=True), prefix="--docker_user", doc=InputDocumentation(doc="The user permissions that the docker containers will\nbe run with (and the permissions set on any output\nfiles produced). Default is 'root'. Setting this to\nNone will set this to the current user.")), ToolInput(tag="in_dest_bucket", input_type=String(optional=True), prefix="--destBucket", doc=InputDocumentation(doc="Specify a cloud bucket endpoint for output files.\n")), ToolInput(tag="in_wdl_file", input_type=String(), position=0, doc=InputDocumentation(doc="A WDL workflow file.")), ToolInput(tag="in_secondary_file", input_type=String(), position=1, doc=InputDocumentation(doc="A secondary data file (json)."))], outputs=[ToolOutput(tag="out_dev_mode", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dev_mode", type_hint=File()), doc=OutputDocumentation(doc="1. Creates 'AST.out', which holds the printed AST and\n'mappings.out', which holds the parsed task, workflow\ndictionaries that were generated. 2. Saves the\ncompiled toil script generated from the wdl/json files\nfrom deletion. 3. Skips autorunning the compiled\npython file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Toil_Wdl_Runner_V0_1_0().translate("wdl", allow_empty_container=True)

