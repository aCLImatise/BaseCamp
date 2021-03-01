from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, Boolean, Int, File

Augur_Traits_V0_1_0 = CommandToolBuilder(tool="augur_traits", base_command=["augur", "traits"], inputs=[ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="tree to perform trait reconstruction on (default:\nNone)")), ToolInput(tag="in_metadata", input_type=String(optional=True), prefix="--metadata", doc=InputDocumentation(doc="tsv/csv table with meta data (default: None)")), ToolInput(tag="in_weights", input_type=String(optional=True), prefix="--weights", doc=InputDocumentation(doc="tsv/csv table with equilibrium probabilities of\ndiscrete states (default: None)")), ToolInput(tag="in_columns", input_type=Array(t=String(), optional=True), prefix="--columns", doc=InputDocumentation(doc="metadata fields to perform discrete reconstruction on\n(default: None)")), ToolInput(tag="in_confidence", input_type=Boolean(optional=True), prefix="--confidence", doc=InputDocumentation(doc="record the distribution of subleading mugration states\n(default: False)")), ToolInput(tag="in_sampling_bias_correction", input_type=Int(optional=True), prefix="--sampling-bias-correction", doc=InputDocumentation(doc="a rough estimate of how many more events would have\nbeen observed if sequences represented an even sample.\nThis should be roughly the (1-sum_i p_i^2)/(1-sum_i\nt_i^2), where p_i are the equilibrium frequencies and\nt_i are apparent ones.(or rather the time spent in a\nparticular state on the tree) (default: None)")), ToolInput(tag="in_output_node_data", input_type=File(optional=True), prefix="--output-node-data", doc=InputDocumentation(doc="name of JSON file to save trait inferences to\n(default: None)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Traits_V0_1_0().translate("wdl", allow_empty_container=True)

