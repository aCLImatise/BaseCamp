from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Upload_Select_V0_1_0 = CommandToolBuilder(tool="hca_upload_select", base_command=["hca", "upload", "select"], inputs=[ToolInput(tag="in_uri_or_alias", input_type=String(), position=0, doc=InputDocumentation(doc="S3 URI of an upload area, or short alias."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_Select_V0_1_0().translate("wdl", allow_empty_container=True)

