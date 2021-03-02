from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Contig_Break_Finder_V0_1_0 = CommandToolBuilder(tool="contig_break_finder", base_command=["contig_break_finder"], inputs=[ToolInput(tag="in_skip", input_type=File(optional=True), prefix="--skip", doc=InputDocumentation(doc="File of contig ids to skip")), ToolInput(tag="in_hit_percent_id", input_type=Int(optional=True), prefix="--hit_percent_id", doc=InputDocumentation(doc="Minimum acceptable hit percent id [80]")), ToolInput(tag="in_min_hit_length", input_type=Int(optional=True), prefix="--min_hit_length", doc=InputDocumentation(doc="Minimum acceptable hit length expressed as percentage\nof gene length [100]")), ToolInput(tag="in_no_random_gene", input_type=Boolean(optional=True), prefix="--no_random_gene", doc=InputDocumentation(doc="Do not run prodigal to get the start of a random gene\nif it cannot find genes in list")), ToolInput(tag="in_no_rename", input_type=Boolean(optional=True), prefix="--no_rename", doc=InputDocumentation(doc="Do not rename contigs to indicate chromosome/plasmid")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep all temp files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_Break_Finder_V0_1_0().translate("wdl", allow_empty_container=True)

