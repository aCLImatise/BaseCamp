from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Cvgchop_V0_1_0 = CommandToolBuilder(tool="cvgChop", base_command=["cvgChop"], inputs=[ToolInput(tag="in_sum", input_type=Boolean(optional=True), prefix="-sum", doc=InputDocumentation(doc="- summarize the coverages")), ToolInput(tag="in_map", input_type=Boolean(optional=True), prefix="-map", doc=InputDocumentation(doc="- build map of coverage areas")), ToolInput(tag="in_cvg", input_type=Int(optional=True), prefix="-cvg", doc=InputDocumentation(doc="- create multi-fasta file of regions\nin genome with > <min_cvg> coverage. (Default: 2)")), ToolInput(tag="in_by_scf", input_type=Boolean(optional=True), prefix="-byscf", doc=InputDocumentation(doc="- the contigs are reported in the order and orientation implied by\nthe scaffolds.  Option requires -a.")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="- splits the contigs into chunks that have > 0 coverage over all length"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cvgchop_V0_1_0().translate("wdl", allow_empty_container=True)

