from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bbsplit_Sh_V0_1_0 = CommandToolBuilder(tool="bbsplit.sh", base_command=["bbsplit.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage, overriding autodetection.\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically 85% of physical memory.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an\nout-of-memory exception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_var_3", input_type=String(), position=0, doc=InputDocumentation(doc="(use the first best site)")), ToolInput(tag="in_var_4", input_type=String(), position=1, doc=InputDocumentation(doc="(consider unmapped)")), ToolInput(tag="in_random", input_type=String(), position=2, doc=InputDocumentation(doc="(select one top-scoring site randomly)")), ToolInput(tag="in_retain_topscoring_sites", input_type=String(), position=3, doc=InputDocumentation(doc="(retain all top-scoring sites.  Does not work yet with SAM output)")), ToolInput(tag="in_var_7", input_type=String(), position=0, doc=InputDocumentation(doc="(use the first best site)")), ToolInput(tag="in_var_8", input_type=String(), position=1, doc=InputDocumentation(doc="(consider unmapped)")), ToolInput(tag="in_write_copy_output", input_type=String(), position=2, doc=InputDocumentation(doc="(write a copy to the output for each reference to which it maps)")), ToolInput(tag="in_split", input_type=String(), position=3, doc=InputDocumentation(doc="(write a copy to the AMBIGUOUS_ output for each reference to which it maps)"))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bbsplit_Sh_V0_1_0().translate("wdl")

