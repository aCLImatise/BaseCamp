from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomcldumppairsfiles_V0_1_0 = CommandToolBuilder(tool="orthomclDumpPairsFiles", base_command=["orthomclDumpPairsFiles"], inputs=[ToolInput(tag="in_mcl_input", input_type=String(), position=0, doc=InputDocumentation(doc="- file required by the mcl program")), ToolInput(tag="in_potential_orthologs_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="- ortholog relationships")), ToolInput(tag="in_potential_in_paralogs_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc="- inparalog relationships")), ToolInput(tag="in_potential_co_orthologs_dot_txt", input_type=String(), position=2, doc=InputDocumentation(doc="- coortholog relationships"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomcldumppairsfiles_V0_1_0().translate("wdl", allow_empty_container=True)

