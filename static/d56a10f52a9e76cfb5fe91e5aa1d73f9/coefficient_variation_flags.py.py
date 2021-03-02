from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Coefficient_Variation_Flags_Py_V0_1_0 = CommandToolBuilder(tool="coefficient_variation_flags.py", base_command=["coefficient_variation_flags.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=File(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of column in design file with Group/treatment\ninformation.")), ToolInput(tag="in_levels", input_type=String(optional=True), prefix="--levels", doc=InputDocumentation(doc="Different groups tosort by separeted by commas.")), ToolInput(tag="in_cv_cut_off", input_type=Int(optional=True), prefix="--CVcutoff", doc=InputDocumentation(doc="The default CV cutoff will flag 10 percent of the\nrowIDs with larger CVs. If you want to set a CV\ncutoff, put the number here. [optional]")), ToolInput(tag="in_figure", input_type=String(optional=True), prefix="--figure", doc=InputDocumentation(doc="Name of the output PDF for CV plots.")), ToolInput(tag="in_flag", input_type=String(optional=True), prefix="--flag", doc=InputDocumentation(doc="Name of the output TSV for CV flags.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coefficient_Variation_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

