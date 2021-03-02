from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Plantcv_Train_Py_Naive_Bayes_Multiclass_V0_1_0 = CommandToolBuilder(tool="plantcv_train.py_naive_bayes_multiclass", base_command=["plantcv-train.py", "naive_bayes_multiclass"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Input file containing a table of pixel RGB values\nsampled for each input class.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Trained classifier output filename.")), ToolInput(tag="in_plots", input_type=Boolean(optional=True), prefix="--plots", doc=InputDocumentation(doc="Make output plots."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Trained classifier output filename."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plantcv_Train_Py_Naive_Bayes_Multiclass_V0_1_0().translate("wdl", allow_empty_container=True)

