from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Humann2_Genefamilies_Genus_Level_V0_1_0 = CommandToolBuilder(tool="humann2_genefamilies_genus_level", base_command=["humann2_genefamilies_genus_level"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="the gene families input table")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="the output table\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Genefamilies_Genus_Level_V0_1_0().translate("wdl", allow_empty_container=True)

