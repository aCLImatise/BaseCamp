from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gdc_Client_Settings_Upload_V0_1_0 = CommandToolBuilder(tool="gdc_client_settings_upload", base_command=["gdc-client", "settings", "upload"], inputs=[ToolInput(tag="in_download", input_type=String(), position=0, doc=InputDocumentation(doc="download data from the GDC")), ToolInput(tag="in_upload", input_type=String(), position=1, doc=InputDocumentation(doc="upload data to the GDC")), ToolInput(tag="in_settings", input_type=String(), position=2, doc=InputDocumentation(doc="display default settings"))], outputs=[], container="quay.io/biocontainers/gdc-client:1.6.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdc_Client_Settings_Upload_V0_1_0().translate("wdl")

