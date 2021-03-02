from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Merge_Putative_Variations_V0_1_0 = CommandToolBuilder(tool="merge_putative_variations", base_command=["merge-putative-variations"], inputs=[ToolInput(tag="in_arg_minimal_weight", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --min_weight ] arg (=1) Minimal weight to be printed (default=1).")), ToolInput(tag="in_arg_minimum_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --min_length ] arg (=0) Minimum length.")), ToolInput(tag="in_sort_weight_default", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --sort_by_weight ]      Sort by weight (default: by position)")), ToolInput(tag="in_arg_filter_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --filter ] arg          Filter file; only retain deletions in the given")), ToolInput(tag="in_arg_input_file", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="[ --input_file ] arg      Input file with variants (equivalent to\nspecifying input files as positional arguments).\n")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="-a [ --all_from_filter ]     Output all variations in the given filter set."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Putative_Variations_V0_1_0().translate("wdl", allow_empty_container=True)

