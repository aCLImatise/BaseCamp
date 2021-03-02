from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Poppunk_Sketch_V0_1_0 = CommandToolBuilder(tool="poppunk_sketch", base_command=["poppunk_sketch"], inputs=[ToolInput(tag="in_sketch", input_type=Boolean(optional=True), prefix="--sketch", doc=InputDocumentation(doc="Create a database of sketches")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="--query", doc=InputDocumentation(doc="Find distances between two sketch databases")), ToolInput(tag="in_r_file", input_type=File(optional=True), prefix="--rfile", doc=InputDocumentation(doc="Samples to sketch")), ToolInput(tag="in_ref_db", input_type=File(optional=True), prefix="--ref-db", doc=InputDocumentation(doc="Prefix of reference database file")), ToolInput(tag="in_query_db", input_type=File(optional=True), prefix="--query-db", doc=InputDocumentation(doc="Prefix of query database file")), ToolInput(tag="in_min_k", input_type=Int(optional=True), prefix="--min-k", doc=InputDocumentation(doc="Minimum kmer length [default = 13]")), ToolInput(tag="in_max_k", input_type=Int(optional=True), prefix="--max-k", doc=InputDocumentation(doc="Maximum kmer length [default = 29]")), ToolInput(tag="in_k_step", input_type=Int(optional=True), prefix="--k-step", doc=InputDocumentation(doc="K-mer step size [default = 4]")), ToolInput(tag="in_sketch_size", input_type=Int(optional=True), prefix="--sketch-size", doc=InputDocumentation(doc="Kmer sketch size [default = 10000]")), ToolInput(tag="in_min_count", input_type=Int(optional=True), prefix="--min-count", doc=InputDocumentation(doc="Minimum k-mer count from reads [default = 20]")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use [default = 1]")), ToolInput(tag="in_pp_sketch", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Sketch_V0_1_0().translate("wdl", allow_empty_container=True)

