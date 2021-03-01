from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Castats_V0_1_0 = CommandToolBuilder(tool="castats", base_command=["castats"], inputs=[ToolInput(tag="in_min_qual", input_type=Boolean(optional=True), prefix="-minqual", doc=InputDocumentation(doc="<n>   Minimum quality value threshhold to report as bad\nquality (default 20)")), ToolInput(tag="in_min_contig", input_type=Int(optional=True), prefix="-mincontig", doc=InputDocumentation(doc="Minimum contig size to report as a big contig\n(default 10000)")), ToolInput(tag="in_genome_size_used", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="Genome size used in the calculation of N50 numbers\n(default: TotalBasesInContigs)")), ToolInput(tag="in_prefix_dot_asm", input_type=String(), position=0, doc=InputDocumentation(doc="The Celera .asm file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Castats_V0_1_0().translate("wdl", allow_empty_container=True)

