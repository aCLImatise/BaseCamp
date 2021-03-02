from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bbmap_Sh_V0_1_0 = CommandToolBuilder(tool="bbmap.sh", base_command=["bbmap.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage,\noverriding autodetection.\n-Xmx20g will specify 20 gigs of RAM, and -Xmx800m\nwill specify 800 megs.  The max is typically 85% of\nphysical memory.  The human genome requires around 24g,\nor 12g with the 'usemodulo' flag.  The index uses\nroughly 6 bytes per reference base.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an\nout-of-memory exception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_best", input_type=String(), position=0, doc=InputDocumentation(doc="(use the first best site)")), ToolInput(tag="in_toss", input_type=String(), position=1, doc=InputDocumentation(doc="(consider unmapped)")), ToolInput(tag="in_random", input_type=String(), position=2, doc=InputDocumentation(doc="(select one top-scoring site randomly)")), ToolInput(tag="in_all", input_type=String(), position=3, doc=InputDocumentation(doc="(retain all top-scoring sites)")), ToolInput(tag="in_orientation_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Set to false for long-mate-pair libraries."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bbmap_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

