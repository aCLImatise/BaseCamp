from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bandage_Querypaths_V0_1_0 = CommandToolBuilder(tool="Bandage_querypaths", base_command=["Bandage", "querypaths"], inputs=[ToolInput(tag="in_path_fast_a", input_type=Boolean(optional=True), prefix="--pathfasta", doc=InputDocumentation(doc="Put all query path sequences in a multi-FASTA file, not in the TSV file")), ToolInput(tag="in_hits_fast_a", input_type=Boolean(optional=True), prefix="--hitsfasta", doc=InputDocumentation(doc="Produce a multi-FASTA file of all BLAST hits in the query paths")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--helpall", doc=InputDocumentation(doc="View all command line settings")), ToolInput(tag="in_graph", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_queries", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bandage_Querypaths_V0_1_0().translate("wdl", allow_empty_container=True)

