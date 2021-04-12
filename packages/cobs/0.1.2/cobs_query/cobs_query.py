from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cobs_Query_V0_1_0 = CommandToolBuilder(tool="cobs_query", base_command=["cobs", "query"], inputs=[ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="--file", doc=InputDocumentation(doc="query (fasta) file to process")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="path to index file(s)")), ToolInput(tag="in_limit", input_type=Boolean(optional=True), prefix="--limit", doc=InputDocumentation(doc="number of results to return, default: all")), ToolInput(tag="in_load_complete", input_type=Boolean(optional=True), prefix="--load-complete", doc=InputDocumentation(doc="load complete index into RAM for batch queries")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use, default: max cores")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="threshold in percentage of terms in query matching,\ndefault: 0.8\n")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="the text sequence to search for"))], outputs=[], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Query_V0_1_0().translate("wdl")

