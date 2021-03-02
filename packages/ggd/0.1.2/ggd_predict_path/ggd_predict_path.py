from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ggd_Predict_Path_V0_1_0 = CommandToolBuilder(tool="ggd_predict_path", base_command=["ggd", "predict-path"], inputs=[ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="The ggd channel of the recipe to find. (Default =\ngenomics)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(Optional) The name or the full directory path to an\nconda environment. The predicted path will be based on\nthis conda environment. When installing, the data\npackage should also be installed in this environment.\n(Only needed if not predicting for a path in the\ncurrent conda enviroment)")), ToolInput(tag="in_package_name", input_type=File(optional=True), prefix="--package-name", doc=InputDocumentation(doc="(Required) The name of the data package to predict a\nfile path for")), ToolInput(tag="in_file_name", input_type=File(optional=True), prefix="--file-name", doc=InputDocumentation(doc="(Required) The name of the file to predict that path\nfor. It is best if you give the full and correct name\nof the file to predict the path for. If not, ggd will\ntry to identify the right file, but won't guarantee\nthat it is the rigth file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Predict_Path_V0_1_0().translate("wdl", allow_empty_container=True)

