from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Porfast_V0_1_0 = CommandToolBuilder(tool="porfast", base_command=["porfast"], inputs=[ToolInput(tag="in_r_one", input_type=Int(optional=True), prefix="--R1", doc=InputDocumentation(doc="FASTQ file, first pair")), ToolInput(tag="in_r_two", input_type=Int(optional=True), prefix="--R2", doc=InputDocumentation(doc="FASTQ file, second pair")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="Minimum ORF size (aa) (default: 26)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Rename reads using this prefix")), ToolInput(tag="in_pool_size", input_type=Int(optional=True), prefix="--pool-size", doc=InputDocumentation(doc="Size of the batch of reads to process per thread (default: 250)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose info")), ToolInput(tag="in_join", input_type=Boolean(optional=True), prefix="--join", doc=InputDocumentation(doc="Try joining paired ends")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="Minimum PE overlap (default: 12)")), ToolInput(tag="in_max_overlap", input_type=Int(optional=True), prefix="--max-overlap", doc=InputDocumentation(doc="Maximum PE overlap (default: 200)")), ToolInput(tag="in_min_identity", input_type=Int(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="Minimum sequence identity in overlap (default: 0.85)"))], outputs=[], container="quay.io/biocontainers/porfast:0.8.0--hed695b0_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Porfast_V0_1_0().translate("wdl")

