from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Vk_Genome_V0_1_0 = CommandToolBuilder(tool="vk_genome", base_command=["vk", "genome"], inputs=[ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--directory", doc=InputDocumentation(doc="Set Genome Directory")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_location", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ncbi", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wormbase", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vk_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

