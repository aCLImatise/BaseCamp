from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int, String

Delta_Filter_V0_1_0 = CommandToolBuilder(tool="delta_filter", base_command=["delta-filter"], inputs=[ToolInput(tag="in__alignment_allowing", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="1-to-1 alignment allowing for rearrangements\n(intersection of -r and -q alignments)")), ToolInput(tag="in__global_alignment", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="1-to-1 global alignment not allowing rearrangements")), ToolInput(tag="in_set_alignment_identity", input_type=Float(optional=True), prefix="-i", doc=InputDocumentation(doc="Set the minimum alignment identity [0, 100], default 0")), ToolInput(tag="in_set_length_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Set the minimum alignment length, default 0")), ToolInput(tag="in_manytomany_alignment_allowing", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Many-to-many alignment allowing for rearrangements\n(union of -r and -q alignments)")), ToolInput(tag="in_maps_position_overlaps", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Maps each position of each query to its best hit in\nthe reference, allowing for reference overlaps")), ToolInput(tag="in_maps_position_query", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Maps each position of each reference to its best hit\nin the query, allowing for query overlaps")), ToolInput(tag="in_set_alignment_uniqueness", input_type=Float(optional=True), prefix="-u", doc=InputDocumentation(doc="Set the minimum alignment uniqueness, i.e. percent of\nthe alignment matching to unique reference AND query\nsequence [0, 100], default 0")), ToolInput(tag="in_set_maximum_alignment", input_type=Float(optional=True), prefix="-o", doc=InputDocumentation(doc="Set the maximum alignment overlap for -r and -q options\nas a percent of the alignment length [0, 100], default 100")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delta_Filter_V0_1_0().translate("wdl")

