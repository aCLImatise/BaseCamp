from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean

Plantcv_Train_Py_Naive_Bayes_V0_1_0 = CommandToolBuilder(tool="plantcv_train.py_naive_bayes", base_command=["plantcv-train.py", "naive_bayes"], inputs=[ToolInput(tag="in_img_dir", input_type=Directory(optional=True), prefix="--imgdir", doc=InputDocumentation(doc="Input directory containing images.")), ToolInput(tag="in_mask_dir", input_type=Directory(optional=True), prefix="--maskdir", doc=InputDocumentation(doc="Input directory containing black/white masks.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Trained classifier output filename.")), ToolInput(tag="in_plots", input_type=Boolean(optional=True), prefix="--plots", doc=InputDocumentation(doc="Make output plots."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Trained classifier output filename."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plantcv_Train_Py_Naive_Bayes_V0_1_0().translate("wdl", allow_empty_container=True)

