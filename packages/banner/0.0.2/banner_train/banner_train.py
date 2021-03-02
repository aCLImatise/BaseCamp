from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Banner_Train_V0_1_0 = CommandToolBuilder(tool="banner_train", base_command=["banner", "train"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The matrix from hulk smash")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Where to write the model to")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="Number of processors to use for training")), ToolInput(tag="in_estimators", input_type=Int(optional=True), prefix="--estimators", doc=InputDocumentation(doc="Number of estimators to use for training\n")), ToolInput(tag="in_banner", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Banner_Train_V0_1_0().translate("wdl", allow_empty_container=True)

