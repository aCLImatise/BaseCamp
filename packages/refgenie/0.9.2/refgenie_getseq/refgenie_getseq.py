from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Refgenie_Getseq_V0_1_0 = CommandToolBuilder(tool="refgenie_getseq", base_command=["refgenie", "getseq"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_locus", input_type=Int(optional=True), prefix="--locus", doc=InputDocumentation(doc="Coordinates of desired sequence; e.g.\n'chr1:50000-50200'.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Getseq_V0_1_0().translate("wdl", allow_empty_container=True)

