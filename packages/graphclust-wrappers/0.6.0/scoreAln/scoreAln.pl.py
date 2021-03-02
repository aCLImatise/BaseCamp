from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Scorealn_Pl_V0_1_0 = CommandToolBuilder(tool="scoreAln.pl", base_command=["scoreAln.pl"], inputs=[ToolInput(tag="in_an_alignment_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="An alignment file                       [REQUIRED]")), ToolInput(tag="in_the_format_alignment", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="The format of the alignment             [REQUIRED]\n[CLUSTALW|TBA|MAF]")), ToolInput(tag="in_detailed_output_details", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Detailed output (1) or no details, only the score (0)")), ToolInput(tag="in_which_score_", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Which score                             [REQUIRED]\n[sop|mpi]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scorealn_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

