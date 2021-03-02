from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Nanosimh_Train_V0_1_0 = CommandToolBuilder(tool="nanosimh_train", base_command=["nanosimh_train"], inputs=[ToolInput(tag="in_in_file", input_type=String(optional=True), prefix="--infile", doc=InputDocumentation(doc="training ONT real reads, must be fasta files")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference genome of the training reads")), ToolInput(tag="in_maf", input_type=File(optional=True), prefix="--maf", doc=InputDocumentation(doc="user can provide their own alignment file, with maf")), ToolInput(tag="in_num_bins", input_type=Int(optional=True), prefix="--num-bins", doc=InputDocumentation(doc="number of bins (for development) [20]")), ToolInput(tag="in_no_model_fit", input_type=Boolean(optional=True), prefix="--no-model-fit", doc=InputDocumentation(doc="no model fitting")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_extension", input_type=String(), position=0, doc=InputDocumentation(doc="-p str, --profile str"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanosimh_Train_V0_1_0().translate("wdl", allow_empty_container=True)

