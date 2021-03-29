from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Nf_Core_Launch_V0_1_0 = CommandToolBuilder(tool="nf_core_launch", base_command=["nf-core", "launch"], inputs=[ToolInput(tag="in_revision", input_type=String(optional=True), prefix="--revision", doc=InputDocumentation(doc="Release/branch/SHA of the project to run (if remote)")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="ID for web-gui launch parameter set")), ToolInput(tag="in_command_only", input_type=Boolean(optional=True), prefix="--command-only", doc=InputDocumentation(doc="Create Nextflow command with params (no params file)")), ToolInput(tag="in_params_out", input_type=File(optional=True), prefix="--params-out", doc=InputDocumentation(doc="Path to save run parameters file")), ToolInput(tag="in_params_in", input_type=File(optional=True), prefix="--params-in", doc=InputDocumentation(doc="Set of input run params to use from a previous run")), ToolInput(tag="in_save_all", input_type=Boolean(optional=True), prefix="--save-all", doc=InputDocumentation(doc="Save all parameters, even if unchanged from default")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Customise the builder URL (for development work)")), ToolInput(tag="in_pipeline_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Launch_V0_1_0().translate("wdl")

