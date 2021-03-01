from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Map2Assembly_V0_1_0 = CommandToolBuilder(tool="map2assembly", base_command=["map2assembly"], inputs=[ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="-cpus", doc=InputDocumentation(doc="|c  <integer>  Tells how many cpus to use for BLAST analysis.")), ToolInput(tag="in_retry", input_type=Boolean(optional=True), prefix="-retry", doc=InputDocumentation(doc="|r <integer>  Rerun failed contigs up to the specified count.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="|f            Delete old files before running again.")), ToolInput(tag="in_again", input_type=Boolean(optional=True), prefix="-again", doc=InputDocumentation(doc="|a            Run again without deleting files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="|q            Silences most status messages.")), ToolInput(tag="in_maps", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_old", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_models", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_new", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_assembly", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_where", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map2Assembly_V0_1_0().translate("wdl")

