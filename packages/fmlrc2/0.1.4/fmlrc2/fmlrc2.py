from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, File, String

Fmlrc2_V0_1_0 = CommandToolBuilder(tool="fmlrc2", base_command=["fmlrc2"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="enable verbose output")), ToolInput(tag="in_begin_index", input_type=Int(optional=True), prefix="--begin_index", doc=InputDocumentation(doc="index of read to start with (default: 0)")), ToolInput(tag="in_branch_factor", input_type=Float(optional=True), prefix="--branch_factor", doc=InputDocumentation(doc="branching factor for correction, scaled by k (default: 4.0)")), ToolInput(tag="in_cache_size", input_type=Int(optional=True), prefix="--cache_size", doc=InputDocumentation(doc="the length of k-mer to precompute in cache (default: 8)")), ToolInput(tag="in_end_index", input_type=File(optional=True), prefix="--end_index", doc=InputDocumentation(doc="index of read to end with (default: end of file)")), ToolInput(tag="in_kmer_sizes_correction", input_type=Int(optional=True), prefix="--K", doc=InputDocumentation(doc="...                k-mer sizes for correction, can be specified multiple times (default: '-k 21\n59')")), ToolInput(tag="in_min_count", input_type=Int(optional=True), prefix="--min_count", doc=InputDocumentation(doc="absolute minimum k-mer count to consisder a path (default: 5)")), ToolInput(tag="in_min_dynamic_count", input_type=Int(optional=True), prefix="--min_dynamic_count", doc=InputDocumentation(doc="dynamic minimum k-mer count fraction of median to consider a path (default:\n0.1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of correction threads (default: 1)")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_comp_msbwtdotnpy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_long_reads_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fmlrc2_V0_1_0().translate("wdl")

