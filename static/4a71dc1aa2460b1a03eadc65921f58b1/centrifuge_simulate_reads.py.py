from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, Float

Centrifuge_Simulate_Reads_Py_V0_1_0 = CommandToolBuilder(tool="centrifuge_simulate_reads.py", base_command=["centrifuge_simulate_reads.py"], inputs=[ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc="RNA-seq reads (default: DNA-seq reads)")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single-end", doc=InputDocumentation(doc="single-end reads (default: paired-end reads)")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="read length (default: 100)")), ToolInput(tag="in_fragment_length", input_type=Int(optional=True), prefix="--fragment-length", doc=InputDocumentation(doc="fragment length (default: 250)")), ToolInput(tag="in_num_fragment", input_type=Int(optional=True), prefix="--num-fragment", doc=InputDocumentation(doc="number of fragments (default: 1000000)")), ToolInput(tag="in_expr_profile", input_type=String(optional=True), prefix="--expr-profile", doc=InputDocumentation(doc="expression profile: flux or constant (default: flux)")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="per-base sequencing error rate (%) (default: 0.0)")), ToolInput(tag="in_max_mismatch", input_type=Int(optional=True), prefix="--max-mismatch", doc=InputDocumentation(doc="max mismatches due to sequencing errors (default: 3)")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="random seeding value (default: 0)")), ToolInput(tag="in_sanity_check", input_type=Boolean(optional=True), prefix="--sanity-check", doc=InputDocumentation(doc="sanity check")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr")), ToolInput(tag="in_index_fname", input_type=String(), position=0, doc=InputDocumentation(doc="Centrifuge index")), ToolInput(tag="in_base_fname", input_type=String(), position=1, doc=InputDocumentation(doc="output base filename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Simulate_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

