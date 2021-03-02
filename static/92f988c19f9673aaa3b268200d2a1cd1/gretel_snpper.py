from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Gretel_Snpper_V0_1_0 = CommandToolBuilder(tool="gretel_snpper", base_command=["gretel-snpper"], inputs=[ToolInput(tag="in_bam", input_type=String(optional=True), prefix="--bam", doc=InputDocumentation(doc="bam of reads aligned to (psuedo)-reference")), ToolInput(tag="in_contig", input_type=String(optional=True), prefix="--contig", doc=InputDocumentation(doc="name of contig to generate a VCF for")), ToolInput(tag="in_start_default_", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="start (default = 1)")), ToolInput(tag="in_end_default_length", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="end (default = length of the reference)")), ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="--depth", doc=InputDocumentation(doc="number of reads that must feature a read to call that base\nas a possible variant (default = 0)")), ToolInput(tag="in_aggressively", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_call", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_variants", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_generate", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gretel_Snpper_V0_1_0().translate("wdl", allow_empty_container=True)

