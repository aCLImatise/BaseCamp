from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String

Phylorank_Mark_Tree_V0_1_0 = CommandToolBuilder(tool="phylorank_mark_tree", base_command=["phylorank", "mark_tree"], inputs=[ToolInput(tag="in_thresholds", input_type=Float(optional=True), prefix="--thresholds", doc=InputDocumentation(doc="relative divergence thresholds for taxonomic ranks\n(default: {'d': 0.33, 'p': 0.56, 'c': 0.65, 'o': 0.78,\n'f': 0.92, 'g': 0.99})")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--min_support", doc=InputDocumentation(doc="only mark nodes above the specified support value\n(default=0) (default: 0)")), ToolInput(tag="in_only_named_clades", input_type=Boolean(optional=True), prefix="--only_named_clades", doc=InputDocumentation(doc="only mark nodes with an existing label")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="only mark nodes with a parent branch above the\nspecified length (default=0) (default: 0.0)")), ToolInput(tag="in_no_percentile", input_type=Boolean(optional=True), prefix="--no_percentile", doc=InputDocumentation(doc="do not mark with percentile information")), ToolInput(tag="in_no_relative_divergence", input_type=Boolean(optional=True), prefix="--no_relative_divergence", doc=InputDocumentation(doc="do not mark with relative divergence information")), ToolInput(tag="in_no_prediction", input_type=Boolean(optional=True), prefix="--no_prediction", doc=InputDocumentation(doc="do not mark with predicted rank information")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="input tree to mark")), ToolInput(tag="in_output_tree", input_type=String(), position=1, doc=InputDocumentation(doc="output tree with assigned taxonomic ranks"))], outputs=[], container="quay.io/biocontainers/phylorank:0.1.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Mark_Tree_V0_1_0().translate("wdl")

