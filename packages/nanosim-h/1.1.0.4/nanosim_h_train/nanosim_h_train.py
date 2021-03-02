from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Nanosim_H_Train_V0_1_0 = CommandToolBuilder(tool="nanosim_h_train", base_command=["nanosim-h-train"], inputs=[ToolInput(tag="in_in_file", input_type=String(optional=True), prefix="--infile", doc=InputDocumentation(doc="training ONT real reads, must be fasta files")), ToolInput(tag="in_maf", input_type=File(optional=True), prefix="--maf", doc=InputDocumentation(doc="user can provide their own alignment file, with maf")), ToolInput(tag="in_no_model_fit", input_type=Boolean(optional=True), prefix="--no-model-fit", doc=InputDocumentation(doc="no model fitting")), ToolInput(tag="in_b", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_extension", input_type=String(), position=0, doc=InputDocumentation(doc="-b int, --num-bins int"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanosim_H_Train_V0_1_0().translate("wdl", allow_empty_container=True)

