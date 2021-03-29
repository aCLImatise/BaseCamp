from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bracken_Build_V0_1_0 = CommandToolBuilder(tool="bracken_build", base_command=["bracken-build"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er_len", input_type=String(), position=0, doc=InputDocumentation(doc="kmer length used to build the kraken database (default: 35)")), ToolInput(tag="in_threads", input_type=String(), position=1, doc=InputDocumentation(doc="the number of threads to use when running kraken classification and the bracken scripts")), ToolInput(tag="in_read_len", input_type=String(), position=2, doc=InputDocumentation(doc="read length to get all classifications for (default: 100)")), ToolInput(tag="in_my_db", input_type=String(), position=3, doc=InputDocumentation(doc="location of Kraken database"))], outputs=[], container="quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bracken_Build_V0_1_0().translate("wdl")

