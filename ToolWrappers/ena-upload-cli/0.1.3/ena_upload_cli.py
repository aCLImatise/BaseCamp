from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Ena_Upload_Cli_V0_1_0 = CommandToolBuilder(tool="ena_upload_cli", base_command=["ena-upload-cli"], inputs=[ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="add: add an object to the archive\nmodify: modify an object in the archive\ncancel: cancel a private object and its dependent objects\nrelease: release a private object immediately to public")), ToolInput(tag="in_study", input_type=String(optional=True), prefix="--study", doc=InputDocumentation(doc="table of STUDY object")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="table of SAMPLE object")), ToolInput(tag="in_experiment", input_type=String(optional=True), prefix="--experiment", doc=InputDocumentation(doc="table of EXPERIMENT object")), ToolInput(tag="in_run", input_type=String(optional=True), prefix="--run", doc=InputDocumentation(doc="table of RUN object")), ToolInput(tag="in_data", input_type=Boolean(optional=True), prefix="--data", doc=InputDocumentation(doc="[FILE [FILE ...]]\ndata for submission")), ToolInput(tag="in_center", input_type=String(optional=True), prefix="--center", doc=InputDocumentation(doc="specific to your Webin account")), ToolInput(tag="in_web_in_id", input_type=String(optional=True), prefix="--webin_id", doc=InputDocumentation(doc="the usermane of your Webin account")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="the password of your Webin account")), ToolInput(tag="in_secret", input_type=File(optional=True), prefix="--secret", doc=InputDocumentation(doc=".secret file containing the password of your Webin")), ToolInput(tag="in_account", input_type=String(), position=0, doc=InputDocumentation(doc="-d, --dev             Flag to use the dev/sandbox endpoint of ENA."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ena_Upload_Cli_V0_1_0().translate("wdl", allow_empty_container=True)

