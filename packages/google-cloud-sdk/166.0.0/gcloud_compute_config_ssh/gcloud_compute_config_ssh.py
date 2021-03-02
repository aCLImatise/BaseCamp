from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gcloud_Compute_Config_Ssh_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_config_ssh", base_command=["gcloud", "compute", "config-ssh"], inputs=[ToolInput(tag="in_dry_run", input_type=File(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="If provided, the proposed changes to the SSH config file are printed to\nstandard output and no actual changes are made.")), ToolInput(tag="in_force_key_file_overwrite", input_type=Boolean(optional=True), prefix="--force-key-file-overwrite", doc=InputDocumentation(doc="If enabled gcloud will regenerate and overwrite the files associated\nwith a broken SSH key without asking for confirmation in both\ninteractive and non-interactive environment.\nIf disabled gcloud will not attempt to regenerate the files associated\nwith a broken SSH key and fail in both interactive and non-interactive\nenvironment.")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="If provided, any changes made to the SSH config file by this tool are\nreverted.")), ToolInput(tag="in_ssh_config_file", input_type=File(optional=True), prefix="--ssh-config-file", doc=InputDocumentation(doc="Specifies an alternative per-user SSH configuration file. By default,\nthis is ~/.ssh/config.")), ToolInput(tag="in_ssh_key_file", input_type=File(optional=True), prefix="--ssh-key-file", doc=InputDocumentation(doc="The path to the SSH key file. By default, this is\n~/.ssh/google_compute_engine."))], outputs=[ToolOutput(tag="out_dry_run", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dry_run", type_hint=File()), doc=OutputDocumentation(doc="If provided, the proposed changes to the SSH config file are printed to\nstandard output and no actual changes are made."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Config_Ssh_V0_1_0().translate("wdl", allow_empty_container=True)

