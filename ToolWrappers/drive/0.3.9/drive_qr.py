from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Drive_Qr_V0_1_0 = CommandToolBuilder(tool="drive_qr", base_command=["drive", "qr"], inputs=[ToolInput(tag="in_address", input_type=String(optional=True), prefix="-address", doc=InputDocumentation(doc="address on which the QR code generator is running (default 'https://qr-server.herokuapp.com/drive')")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="show step by step information verbosely (default true)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Qr_V0_1_0().translate("wdl", allow_empty_container=True)

