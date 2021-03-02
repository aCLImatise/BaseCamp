from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Taxmapper_Search_V0_1_0 = CommandToolBuilder(tool="taxmapper_search", base_command=["taxmapper", "search"], inputs=[ToolInput(tag="in_forward", input_type=File(optional=True), prefix="--forward", doc=InputDocumentation(doc="Forward reads in fasta or fastq format")), ToolInput(tag="in_reverse", input_type=File(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Reads in fasta or fastq format [optional]")), ToolInput(tag="in_rap_search", input_type=File(optional=True), prefix="--rapsearch", doc=InputDocumentation(doc="Rapsearch path, version >=2.24 [default: rapsearch set\nin PATH variable]")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to RAPSearch database index")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for output files [default: <input>_hits]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads [default: 4]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Search_V0_1_0().translate("wdl", allow_empty_container=True)

