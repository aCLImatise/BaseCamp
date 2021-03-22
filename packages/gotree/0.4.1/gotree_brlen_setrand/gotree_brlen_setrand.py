from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Gotree_Brlen_Setrand_V0_1_0 = CommandToolBuilder(tool="gotree_brlen_setrand", base_command=["gotree", "brlen", "setrand"], inputs=[ToolInput(tag="in_max_mean", input_type=Float(optional=True), prefix="--max-mean", doc=InputDocumentation(doc="Mean of the exponential distribution of branch lengths will be drawn uniformly in the interval [min-mean,max-mean] (default 0.05)")), ToolInput(tag="in_mean", input_type=Float(optional=True), prefix="--mean", doc=InputDocumentation(doc="Mean of the exponential distribution of branch lengths (default 0.1)")), ToolInput(tag="in_min_mean", input_type=Float(optional=True), prefix="--min-mean", doc=InputDocumentation(doc="Mean of the exponential distribution of branch lengths will be drawn uniformly in the interval [min-mean,max-mean] (default 0.001)")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Random length output tree file (default 'stdout')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Brlen_Setrand_V0_1_0().translate("wdl")

