from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Parsec_Libraries_Wait_For_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_wait_for_dataset", base_command=["parsec", "libraries", "wait_for_dataset"], inputs=[ToolInput(tag="in_max_wait", input_type=Float(optional=True), prefix="--maxwait", doc=InputDocumentation(doc="Total time (in seconds) to wait for the dataset state to\nbecome terminal. If the dataset state is not terminal\nwithin this time, a ``DatasetTimeoutException`` will be\nthrown.  [default: 12000]")), ToolInput(tag="in_interval", input_type=Float(optional=True), prefix="--interval", doc=InputDocumentation(doc="Time (in seconds) to wait between 2 consecutive checks.\n[default: 3]")), ToolInput(tag="in_library", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Wait_For_Dataset_V0_1_0().translate("wdl")

