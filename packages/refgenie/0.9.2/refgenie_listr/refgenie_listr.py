from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenie_Listr_V0_1_0 = CommandToolBuilder(tool="refgenie_listr", base_command=["refgenie", "listr"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_reference_assembly_id", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[GENOME [GENOME ...]], --genome [GENOME [GENOME ...]]\nReference assembly ID, e.g. mm10.\n")), ToolInput(tag="in_genome", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Listr_V0_1_0().translate("wdl", allow_empty_container=True)

