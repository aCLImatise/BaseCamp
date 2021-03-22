from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenie_Upgrade_V0_1_0 = CommandToolBuilder(tool="refgenie_upgrade", base_command=["refgenie", "upgrade"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if REFGENIE\nenvironment variable is set.")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="Whether the config file should not be locked for reading")), ToolInput(tag="in_target_version", input_type=String(optional=True), prefix="--target-version", doc=InputDocumentation(doc="Target config version for the upgrade.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Do not prompt before action, approve upfront."))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Upgrade_V0_1_0().translate("wdl")

