from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Gmer_Counter_V0_1_0 = CommandToolBuilder(tool="gmer_counter", base_command=["gmer_counter"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc="- SNP/KMER database file")), ToolInput(tag="in_dbb", input_type=File(optional=True), prefix="-dbb", doc=InputDocumentation(doc="- binary database file")), ToolInput(tag="in_write_binary_database", input_type=File(optional=True), prefix="-w", doc=InputDocumentation(doc="- write binary database to file")), ToolInput(tag="in_max_km_ers", input_type=Int(optional=True), prefix="--max_kmers", doc=InputDocumentation(doc="- maximum number of kmers per node")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="- print header row")), ToolInput(tag="in_total", input_type=Boolean(optional=True), prefix="--total", doc=InputDocumentation(doc="- print the total number of kmers per node")), ToolInput(tag="in_unique", input_type=Boolean(optional=True), prefix="--unique", doc=InputDocumentation(doc="- print the number of nonzero kmers per node")), ToolInput(tag="in_km_ers", input_type=Boolean(optional=True), prefix="--kmers", doc=InputDocumentation(doc="- print individual kmer counts (default if no other output)")), ToolInput(tag="in_distribution", input_type=Int(optional=True), prefix="--distribution", doc=InputDocumentation(doc="- print kmer distribution (up to given number)")), ToolInput(tag="in_increase_debug_level", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="- increase debug level")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmer_Counter_V0_1_0().translate("wdl", allow_empty_container=True)

