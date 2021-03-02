from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

New_Species_Pl_V0_1_0 = CommandToolBuilder(tool="new_species.pl", base_command=["new_species.pl"], inputs=[ToolInput(tag="in_augustus_config_path", input_type=File(optional=True), prefix="--AUGUSTUS_CONFIG_PATH", doc=InputDocumentation(doc="full path to augustus/config directory")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress help messages")), ToolInput(tag="in_ignore", input_type=Boolean(optional=True), prefix="--ignore", doc=InputDocumentation(doc="don't do anything if species already exists (default: off)")), ToolInput(tag="in_prokaryotic", input_type=Boolean(optional=True), prefix="--prokaryotic", doc=InputDocumentation(doc="use prokaryotic template instead of eukaryotic template"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    New_Species_Pl_V0_1_0().translate("wdl")

