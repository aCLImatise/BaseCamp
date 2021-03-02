from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Gsutil_Cat_V0_1_0 = CommandToolBuilder(tool="gsutil_cat", base_command=["gsutil", "cat"], inputs=[ToolInput(tag="in_causes_gsutil_output", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Causes gsutil to output just the specified byte range of the\nobject. Ranges are can be of these forms:\nstart-end (e.g., -r 256-5939)\nstart-    (e.g., -r 256-)\n-numbytes (e.g., -r -5)\nwhere offsets start at 0, start-end means to return bytes start\nthrough end (inclusive), start- means to return bytes start\nthrough the end of the object, and -numbytes means to return the\nlast numbytes of the object. For example:\ngsutil cat -r 256-939 gs://bucket/object\nreturns bytes 256 through 939, while:\ngsutil cat -r -5 gs://bucket/object\nreturns the final 5 bytes of the object.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Cat_V0_1_0().translate("wdl", allow_empty_container=True)

