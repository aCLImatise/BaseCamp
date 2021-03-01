from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bcbio_Vm_Py_Cwl_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_cwl", base_command=["bcbio_vm.py", "cwl"], inputs=[ToolInput(tag="in_system_config", input_type=File(optional=True), prefix="--systemconfig", doc=InputDocumentation(doc="Global YAML configuration file specifying system\ndetails. Defaults to installed bcbio_system.yaml.")), ToolInput(tag="in_add_container_tag", input_type=String(optional=True), prefix="--add-container-tag", doc=InputDocumentation(doc="Add a container revision tag to CWL ('quay_lookup`\nretrieves lates from quay.io)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Cwl_V0_1_0().translate("wdl", allow_empty_container=True)

