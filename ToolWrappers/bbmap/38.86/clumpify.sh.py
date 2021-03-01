from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Clumpify_Sh_V0_1_0 = CommandToolBuilder(tool="clumpify.sh", base_command=["clumpify.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage, overriding autodetection.\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically 85% of physical memory.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an\nout-of-memory exception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_compression_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Should be disabled for paired reads.")), ToolInput(tag="in_reads_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Yields the highest compression.")), ToolInput(tag="in_non_duplicate_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Improves detection of inexact duplicates.")), ToolInput(tag="in_next_seq", input_type=String(), position=0, doc=InputDocumentation(doc="40  (and spany=t)")), ToolInput(tag="in_y_axis_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Should only be enabled when looking for ")), ToolInput(tag="in_correlations_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Increasing this number can reduce false-"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clumpify_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

