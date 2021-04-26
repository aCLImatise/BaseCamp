from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, Int

Rgi_Heatmap_V0_1_0 = CommandToolBuilder(tool="rgi_heatmap", base_command=["rgi", "heatmap"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="Directory containing the RGI .json files (REQUIRED)")), ToolInput(tag="in_category", input_type=String(optional=True), prefix="--category", doc=InputDocumentation(doc="The option to organize resistance genes based on a\ncategory.")), ToolInput(tag="in_frequency", input_type=Boolean(optional=True), prefix="--frequency", doc=InputDocumentation(doc="Represent samples based on resistance profile.")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Name for the output EPS and PNG files. The number of\nfiles run will automatically be appended to the end of\nthe file name. (default=RGI_heatmap)")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="Option to use SciPy's hiearchical clustering algorithm\nto cluster rows (AMR genes) or columns (samples).")), ToolInput(tag="in_display", input_type=String(optional=True), prefix="--display", doc=InputDocumentation(doc="Specify display options for categories\n(deafult=plain).")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode"))], outputs=[], container="quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Heatmap_V0_1_0().translate("wdl")

