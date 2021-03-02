from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Ggd_Predict_Path_V0_1_0 = CommandToolBuilder(tool="ggd_predict_path", base_command=["ggd", "predict-path"], inputs=[ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="The ggd channel of the recipe to find. (Default =\ngenomics)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(Optional) The name or the full directory path to an\nconda environment. The predicted path will be based on\nthis conda environment. When installing, the data\npackage should also be installed in this environment.\n(Only needed if not predicting for a path in the\ncurrent conda environment)")), ToolInput(tag="in_id", input_type=File(optional=True), prefix="--id", doc=InputDocumentation(doc="ID   (Optional) The ID to predict the path for if the\npackage is a meta-recipe. If it is not a meta-recipe\nit will be ignored")), ToolInput(tag="in_dir_path", input_type=Boolean(optional=True), prefix="--dir-path", doc=InputDocumentation(doc="(Required if '--file-name' not used) Whether or not to\nget the predicted directory path rather then the\npredicted file path. If both --file-name and --dir-\npath are provided the --file-name will be used and\n--dir-path will be ignored")), ToolInput(tag="in_file_name", input_type=File(optional=True), prefix="--file-name", doc=InputDocumentation(doc="(Required if '--dir-path' not used) The name of the\nfile to predict that path for. It is best if you give\nthe full and correct name of the file to predict the\npath for. If not, ggd will try to identify the right\nfile, but won't guarantee that it is the right file")), ToolInput(tag="in_required_name_predict", input_type=File(optional=True), prefix="--package-name", doc=InputDocumentation(doc="(Required) The name of the data package to predict a\nfile path for\n")), ToolInput(tag="in_get_predicted_path", input_type=String(), position=0, doc=InputDocumentation(doc="Get a predicted install file path for a data package before it is installed."))], outputs=[], container="quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Predict_Path_V0_1_0().translate("wdl")

