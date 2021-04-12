from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Ena_Upload_Cli_V0_1_0 = CommandToolBuilder(tool="ena_upload_cli", base_command=["ena-upload-cli"], inputs=[ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="add: add an object to the archive\nmodify: modify an object in the archive\ncancel: cancel a private object and its dependent objects\nrelease: release a private object immediately to public")), ToolInput(tag="in_study", input_type=String(optional=True), prefix="--study", doc=InputDocumentation(doc="table of STUDY object")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="table of SAMPLE object")), ToolInput(tag="in_experiment", input_type=String(optional=True), prefix="--experiment", doc=InputDocumentation(doc="table of EXPERIMENT object")), ToolInput(tag="in_run", input_type=String(optional=True), prefix="--run", doc=InputDocumentation(doc="table of RUN object")), ToolInput(tag="in_data", input_type=Boolean(optional=True), prefix="--data", doc=InputDocumentation(doc="[FILE ...]     Data for submission")), ToolInput(tag="in_center", input_type=String(optional=True), prefix="--center", doc=InputDocumentation(doc="specific to your Webin account")), ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="Specify the name of the tool this submission is done\nwith. Default: ena-upload-cli")), ToolInput(tag="in_tool_version", input_type=String(optional=True), prefix="--tool_version", doc=InputDocumentation(doc="Specify the version of the tool this submission is\ndone with.")), ToolInput(tag="in_secret", input_type=File(optional=True), prefix="--secret", doc=InputDocumentation(doc=".secret.yml file containing the password and Webin ID\nof your ENA account")), ToolInput(tag="in_dev", input_type=Boolean(optional=True), prefix="--dev", doc=InputDocumentation(doc="Flag to use the dev/sandbox endpoint of ENA.")), ToolInput(tag="in_vir", input_type=Boolean(optional=True), prefix="--vir", doc=InputDocumentation(doc="Flag to use the viral sample template.")), ToolInput(tag="in_en_a_up_oad_cli", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ena-upload-cli:0.2.7--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ena_Upload_Cli_V0_1_0().translate("wdl")

