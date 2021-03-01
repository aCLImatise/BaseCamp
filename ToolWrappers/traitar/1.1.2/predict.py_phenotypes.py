from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Predict_Py_Phenotypes_V0_1_0 = CommandToolBuilder(tool="predict.py_phenotypes", base_command=["predict.py", "phenotypes"], inputs=[ToolInput(tag="in_voters", input_type=Int(optional=True), prefix="--voters", doc=InputDocumentation(doc="use this number of voters for the classification\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_pt_models", input_type=String(), position=1, doc=InputDocumentation(doc="archive with the phenotype predictors")), ToolInput(tag="in_out_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory for the phenotype predictions")), ToolInput(tag="in_summary_file_pfams", input_type=String(), position=3, doc=InputDocumentation(doc="summary file with pfams"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Predict_Py_Phenotypes_V0_1_0().translate("wdl", allow_empty_container=True)

