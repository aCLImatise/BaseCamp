from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Rb_V0_1_0 = CommandToolBuilder(tool="gsutil_rb", base_command=["gsutil", "rb"], inputs=[ToolInput(tag="in_continues_silently_printing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Continues silently (without printing error messages) despite\nerrors when removing buckets. If some buckets couldn't be removed,\ngsutil's exit status will be non-zero even if this flag is set.\n")), ToolInput(tag="in_the_mdot", input_type=String(), position=0, doc=InputDocumentation(doc="Be certain you want to delete a bucket before you do so, as once it is"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

