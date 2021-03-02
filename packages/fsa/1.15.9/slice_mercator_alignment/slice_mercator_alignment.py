from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Slice_Mercator_Alignment_V0_1_0 = CommandToolBuilder(tool="slice_mercator_alignment", base_command=["slice_mercator_alignment"], inputs=[ToolInput(tag="in_data", input_type=Directory(optional=True), prefix="--data", doc=InputDocumentation(doc="path to map, genome and alignment files")), ToolInput(tag="in_map", input_type=Directory(optional=True), prefix="--map", doc=InputDocumentation(doc="path to map and genome files")), ToolInput(tag="in_align", input_type=Directory(optional=True), prefix="--align", doc=InputDocumentation(doc="path to alignment files")), ToolInput(tag="in_lazy", input_type=Boolean(optional=True), prefix="--lazy", doc=InputDocumentation(doc="warn, rather than die, if the subalignment can't be obtained")), ToolInput(tag="in_truncate", input_type=Boolean(optional=True), prefix="--truncate", doc=InputDocumentation(doc="truncate unmappable sequence (rather than skipping) and show truncated subalignment")), ToolInput(tag="in_stockholm", input_type=Boolean(optional=True), prefix="--stockholm", doc=InputDocumentation(doc="use and display Stockholm-format alignments with conservation statistics (default is multi-FASTA)")), ToolInput(tag="in_zero_based", input_type=Boolean(optional=True), prefix="--zerobased", doc=InputDocumentation(doc="coordinates are 0-based (default is 1-based)")), ToolInput(tag="in_half_open", input_type=Boolean(optional=True), prefix="--halfopen", doc=InputDocumentation(doc="end coordinate is open, i.e., [start, end)")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_strand", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slice_Mercator_Alignment_V0_1_0().translate("wdl")

