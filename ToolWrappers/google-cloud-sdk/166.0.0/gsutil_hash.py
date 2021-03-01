from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gsutil_Hash_V0_1_0 = CommandToolBuilder(tool="gsutil_hash", base_command=["gsutil", "hash"], inputs=[ToolInput(tag="in_calculate_crcc_hash", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Calculate a CRC32c hash for the file.")), ToolInput(tag="in_calculate_md_hash", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Calculate a MD5 hash for the file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Hash_V0_1_0().translate("wdl", allow_empty_container=True)

