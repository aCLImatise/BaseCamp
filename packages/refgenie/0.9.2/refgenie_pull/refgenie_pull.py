from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Refgenie_Pull_V0_1_0 = CommandToolBuilder(tool="refgenie_pull", base_command=["refgenie", "pull"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Do not prompt before action, approve upfront.")), ToolInput(tag="in_no_overwrite", input_type=Boolean(optional=True), prefix="--no-overwrite", doc=InputDocumentation(doc="Do not overwrite if asset exists.")), ToolInput(tag="in_no_untar", input_type=Boolean(optional=True), prefix="--no-untar", doc=InputDocumentation(doc="Do not extract tarballs.")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify assets\n(e.g. hg38/fasta or hg38/fasta:tag)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Pull_V0_1_0().translate("wdl", allow_empty_container=True)

