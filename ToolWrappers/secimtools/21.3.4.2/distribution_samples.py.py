from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Distribution_Samples_Py_V0_1_0 = CommandToolBuilder(tool="distribution_samples.py", base_command=["distribution_samples.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with uniqueID.")), ToolInput(tag="in_group", input_type=File(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of column in design file with Group/treatment\ninformation.")), ToolInput(tag="in_order", input_type=String(optional=True), prefix="--order", doc=InputDocumentation(doc="Name of the column with the runOrder")), ToolInput(tag="in_levels", input_type=String(optional=True), prefix="--levels", doc=InputDocumentation(doc="Different groups tosort by separeted by commas.")), ToolInput(tag="in_figure", input_type=File(optional=True), prefix="--figure", doc=InputDocumentation(doc="Path for the distribution figure")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n")), ToolInput(tag="in_paths", input_type=String(), position=0, doc=InputDocumentation(doc="and outputs"))], outputs=[], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Distribution_Samples_Py_V0_1_0().translate("wdl")

