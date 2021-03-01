from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Make_Initial_Stoptags_Py_V0_1_0 = CommandToolBuilder(tool="make_initial_stoptags.py", base_command=["make-initial-stoptags.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--ksize", doc=InputDocumentation(doc="k-mer size to use (default: 32)")), ToolInput(tag="in_unique_km_ers", input_type=Int(optional=True), prefix="--unique-kmers", doc=InputDocumentation(doc="approximate number of unique kmers in the input set\n(default: 0)")), ToolInput(tag="in_fp_rate", input_type=String(optional=True), prefix="--fp-rate", doc=InputDocumentation(doc="Override the automatic FP rate setting for the current\nscript (default: None)")), ToolInput(tag="in_max_memory_usage", input_type=Int(optional=True), prefix="--max-memory-usage", doc=InputDocumentation(doc="maximum amount of memory to use for data structure\n(default: None)")), ToolInput(tag="in_small_count", input_type=Boolean(optional=True), prefix="--small-count", doc=InputDocumentation(doc="Reduce memory usage by using a smaller counter for\nindividual kmers. (default: False)")), ToolInput(tag="in_subset_size", input_type=Int(optional=True), prefix="--subset-size", doc=InputDocumentation(doc="Set subset size (default 1e4 is prob ok) (default:\n10000)")), ToolInput(tag="in_stop_tags", input_type=File(optional=True), prefix="--stoptags", doc=InputDocumentation(doc="Use stoptags in this file during partitioning\n(default: )")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Initial_Stoptags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

