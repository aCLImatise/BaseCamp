from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Tritimap_Run_V0_1_0 = CommandToolBuilder(tool="tritimap_run", base_command=["tritimap", "run"], inputs=[ToolInput(tag="in_working_dir", input_type=File(optional=True), prefix="--working-dir", doc=InputDocumentation(doc="Triti-Map running directory.")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Triti-Map config file, generated with tritimap init.")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Use at most N CPU cores/jobs in parallel.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="Do not execute anything, and display what would be")), ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="Name of profile to use for configuring Snakemake.")), ToolInput(tag="in_done_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[default: False]"))], outputs=[], container="quay.io/biocontainers/tritimap:0.9.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tritimap_Run_V0_1_0().translate("wdl")

