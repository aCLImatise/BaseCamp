from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pairsnp_V0_1_0 = CommandToolBuilder(tool="pairsnp", base_command=["pairsnp"], inputs=[ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit")), ToolInput(tag="in_output_sparse_matrix", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Output in sparse matrix form (i,j,distance).")), ToolInput(tag="in_distance_threshold_sparse", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Distance threshold for sparse output. Only distances <= d will be returned.")), ToolInput(tag="in_return_nearest_neighbours", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Will on return the k nearest neighbours for each sample in sparse output.")), ToolInput(tag="in_output_csv_instead", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Output CSV instead of TSV")), ToolInput(tag="in_count_comparisons_ns", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Count comparisons with Ns (off by default)")), ToolInput(tag="in_number_threads_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads to use (default=1)")), ToolInput(tag="in_blank_top_left", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Blank top left corner cell instead of 'pairsnp 0.2.0'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairsnp_V0_1_0().translate("wdl", allow_empty_container=True)

