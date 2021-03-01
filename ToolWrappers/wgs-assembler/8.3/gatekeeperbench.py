from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Gatekeeperbench_V0_1_0 = CommandToolBuilder(tool="gatekeeperbench", base_command=["gatekeeperbench"], inputs=[ToolInput(tag="in_gkpstorename_createreadwrite_store", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="gkpStoreName    create/read/write the store called 'gkpStoreName'")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="s               use random seed s")), ToolInput(tag="in_create", input_type=Int(optional=True), prefix="-create", doc=InputDocumentation(doc="add numFrags random fragments")), ToolInput(tag="in_mates", input_type=Boolean(optional=True), prefix="-mates", doc=InputDocumentation(doc="numMates        update numMates random mated fragments")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="-reads", doc=InputDocumentation(doc="numReads        read numReads random fragments")), ToolInput(tag="in_very_useful_benchmark", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="not a very useful benchmark.  It is somewhat CPU bound, and simply writes")), ToolInput(tag="in_possibly_most_brutal", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="possibly the most brutal test.  It reads and writes randomly to a moderately")), ToolInput(tag="in_presumed_be_majority", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="(presumed to be) the majority of accesses made by the assembler.  It reads a")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gatekeeperbench_V0_1_0().translate("wdl", allow_empty_container=True)

