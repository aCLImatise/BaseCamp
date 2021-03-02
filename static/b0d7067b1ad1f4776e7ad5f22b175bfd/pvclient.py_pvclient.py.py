from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pvclient_Py_Pvclient_Py_V0_1_0 = CommandToolBuilder(tool="pvclient.py_pvclient.py", base_command=["pvclient.py", "pvclient.py"], inputs=[ToolInput(tag="in_ct", input_type=String(optional=True), prefix="--ct", doc=InputDocumentation(doc="Connect-table secondary structure.")), ToolInput(tag="in_structures", input_type=String(optional=True), prefix="--structures", doc=InputDocumentation(doc="Chemical-probing data.")), ToolInput(tag="in_pv_client_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvclient_Py_Pvclient_Py_V0_1_0().translate("wdl", allow_empty_container=True)

