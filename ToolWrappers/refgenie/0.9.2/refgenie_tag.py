from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Refgenie_Tag_V0_1_0 = CommandToolBuilder(tool="refgenie_tag", base_command=["refgenie", "tag"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="Tag to assign to an asset.")), ToolInput(tag="in_default", input_type=Boolean(optional=True), prefix="--default", doc=InputDocumentation(doc="Set the selected asset tag as the default one.")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify assets\n(e.g. hg38/fasta or hg38/fasta:tag)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Tag_V0_1_0().translate("wdl", allow_empty_container=True)

