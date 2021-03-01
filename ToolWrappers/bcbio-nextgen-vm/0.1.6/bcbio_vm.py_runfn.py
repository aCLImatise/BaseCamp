from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Bcbio_Vm_Py_Runfn_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_runfn", base_command=["bcbio_vm.py", "runfn"], inputs=[ToolInput(tag="in_system_config", input_type=File(optional=True), prefix="--systemconfig", doc=InputDocumentation(doc="Global YAML configuration file specifying system\ndetails. Defaults to installed bcbio_system.yaml.")), ToolInput(tag="in_num_cores", input_type=Int(optional=True), prefix="--numcores", doc=InputDocumentation(doc="Total cores to use for processing\n")), ToolInput(tag="in_fn_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name of the function to run")), ToolInput(tag="in_parallel", input_type=String(), position=1, doc=InputDocumentation(doc="JSON/YAML file describing the parallel environment")), ToolInput(tag="in_run_args", input_type=String(), position=2, doc=InputDocumentation(doc="JSON/YAML file with arguments to the function"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Runfn_V0_1_0().translate("wdl", allow_empty_container=True)

