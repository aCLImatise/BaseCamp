from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Run_Dag_Chainer_Pl_V0_1_0 = CommandToolBuilder(tool="run_DAG_chainer.pl", base_command=["run_DAG_chainer.pl"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dagchainer:r120920--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Dag_Chainer_Pl_V0_1_0().translate("wdl")

