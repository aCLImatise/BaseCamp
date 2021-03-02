from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Find_Knots_Py_V0_1_0 = CommandToolBuilder(tool="find_knots.py", base_command=["find-knots.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--ksize", doc=InputDocumentation(doc="k-mer size to use (default: 32)")), ToolInput(tag="in_unique_km_ers", input_type=Int(optional=True), prefix="--unique-kmers", doc=InputDocumentation(doc="approximate number of unique kmers in the input set\n(default: 0)")), ToolInput(tag="in_fp_rate", input_type=String(optional=True), prefix="--fp-rate", doc=InputDocumentation(doc="Override the automatic FP rate setting for the current\nscript (default: None)")), ToolInput(tag="in_max_memory_usage", input_type=Int(optional=True), prefix="--max-memory-usage", doc=InputDocumentation(doc="maximum amount of memory to use for data structure\n(default: None)")), ToolInput(tag="in_small_count", input_type=Boolean(optional=True), prefix="--small-count", doc=InputDocumentation(doc="Reduce memory usage by using a smaller counter for\nindividual kmers. (default: False)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Continue past warnings (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Knots_Py_V0_1_0().translate("wdl", allow_empty_container=True)

