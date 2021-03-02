from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gsutil_Version_V0_1_0 = CommandToolBuilder(tool="gsutil_version", base_command=["gsutil", "version"], inputs=[ToolInput(tag="in_prints_additional_information", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Prints additional information, such as the version of Python\nbeing used, the version of the Boto library, a checksum of the\ncode, the path to gsutil, and the path to gsutil's configuration\nfile.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Version_V0_1_0().translate("wdl", allow_empty_container=True)

