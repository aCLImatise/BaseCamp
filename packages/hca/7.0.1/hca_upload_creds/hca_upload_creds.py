from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Upload_Creds_V0_1_0 = CommandToolBuilder(tool="hca_upload_creds", base_command=["hca", "upload", "creds"], inputs=[ToolInput(tag="in_uuid_or_alias", input_type=String(), position=0, doc=InputDocumentation(doc="Full or partial (alias) UUID of an upload area."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_Creds_V0_1_0().translate("wdl", allow_empty_container=True)

