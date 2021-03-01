from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cleanpolishes_V0_1_0 = CommandToolBuilder(tool="cleanPolishes", base_command=["cleanPolishes"], inputs=[ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="Introns bigger than this are candidates for trimming (default = 100000).")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="Don't print unmodified matches")), ToolInput(tag="in_before_after", input_type=Boolean(optional=True), prefix="-beforeafter", doc=InputDocumentation(doc="Save (in separate files) the before/after of each modified match")), ToolInput(tag="in_segregate", input_type=Boolean(optional=True), prefix="-segregate", doc=InputDocumentation(doc="Save (in separate files) the after of each modified match")), ToolInput(tag="in_gff_three", input_type=Boolean(optional=True), prefix="-gff3", doc=InputDocumentation(doc="Write output in GFF3 format")), ToolInput(tag="in_save_junk", input_type=Boolean(optional=True), prefix="-savejunk", doc=InputDocumentation(doc="Also print the trimmed pieces (as separate matches)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cleanpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

