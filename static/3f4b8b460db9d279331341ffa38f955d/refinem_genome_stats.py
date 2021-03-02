from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Refinem_Genome_Stats_V0_1_0 = CommandToolBuilder(tool="refinem_genome_stats", base_command=["refinem", "genome_stats"], inputs=[ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger (default: False)")), ToolInput(tag="in_scaffold_stats_file", input_type=String(), position=0, doc=InputDocumentation(doc="file with statistics for each scaffold")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="output file with genome statistics"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Genome_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

