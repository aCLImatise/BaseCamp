from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Abyss_Layout_V0_1_0 = CommandToolBuilder(tool="abyss_layout", base_command=["abyss-layout"], inputs=[ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="minimum sequence length [0]")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="minimum overlap [0]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="length of a k-mer")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write the paths to FILE")), ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="write the graph to FILE")), ToolInput(tag="in_tred", input_type=Boolean(optional=True), prefix="--tred", doc=InputDocumentation(doc="remove transitive edges")), ToolInput(tag="in_no_tred", input_type=Boolean(optional=True), prefix="--no-tred", doc=InputDocumentation(doc="do not remove transitive edges [default]")), ToolInput(tag="in_ss", input_type=Boolean(optional=True), prefix="--SS", doc=InputDocumentation(doc="expect contigs to be oriented correctly")), ToolInput(tag="in_no_ss", input_type=Boolean(optional=True), prefix="--no-SS", doc=InputDocumentation(doc="no assumption about contig orientation [default]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="the sequence overlap graph"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Layout_V0_1_0().translate("wdl")

