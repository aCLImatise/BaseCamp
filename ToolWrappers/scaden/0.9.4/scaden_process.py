from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Scaden_Process_V0_1_0 = CommandToolBuilder(tool="scaden_process", base_command=["scaden", "process"], inputs=[ToolInput(tag="in_processed_path", input_type=File(optional=True), prefix="--processed_path", doc=InputDocumentation(doc="Path of processed file. Must end with .h5ad")), ToolInput(tag="in_var_cut_off", input_type=Float(optional=True), prefix="--var_cutoff", doc=InputDocumentation(doc="Filter out genes with a variance less than the\nspecified cutoff. A low cutoff is recommended,this\nshould only remove genes that are obviously\nuninformative.")), ToolInput(tag="in_training_dataset_to_be_processed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaden_Process_V0_1_0().translate("wdl", allow_empty_container=True)

