from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bbduk_Sh_V0_1_0 = CommandToolBuilder(tool="bbduk.sh", base_command=["bbduk.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\nspecify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically 85% of physical memory.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an\nout-of-memory exception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_km_ers_dot", input_type=String(), position=0, doc=InputDocumentation(doc="1 means use all, 2 means use every other kmer, etc.")), ToolInput(tag="in_discarded_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Pairs will be discarded if both are shorter."))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bbduk_Sh_V0_1_0().translate("wdl")

