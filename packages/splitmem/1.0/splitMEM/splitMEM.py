from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Splitmem_V0_1_0 = CommandToolBuilder(tool="splitMEM", base_command=["splitMEM"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-file", doc=InputDocumentation(doc="Load sequence from file")), ToolInput(tag="in_mem", input_type=String(optional=True), prefix="-mem", doc=InputDocumentation(doc="Locate MEMs at least this long")), ToolInput(tag="in_many_mems", input_type=File(optional=True), prefix="-manyMEMs", doc=InputDocumentation(doc="File of minimum MEM lengths")), ToolInput(tag="in_cdg", input_type=File(optional=True), prefix="-cdg", doc=InputDocumentation(doc="Filename of compressed de Bruijn graph")), ToolInput(tag="in_multi_fa", input_type=Boolean(optional=True), prefix="-multiFa", doc=InputDocumentation(doc="Indicates the input file is a multifasta file for pan-genome analysis"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitmem_V0_1_0().translate("wdl", allow_empty_container=True)

