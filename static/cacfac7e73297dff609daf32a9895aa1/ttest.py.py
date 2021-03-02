from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ttest_Py_V0_1_0 = CommandToolBuilder(tool="ttest.py", base_command=["ttest.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_unique_id", input_type=String(optional=True), prefix="--uniqueID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of the column with group variable.")), ToolInput(tag="in_pairing", input_type=String(optional=True), prefix="--pairing", doc=InputDocumentation(doc="Choice of the test: has to be either paired or\nunpaired.")), ToolInput(tag="in_order", input_type=String(optional=True), prefix="--order", doc=InputDocumentation(doc="Name of the pairing vaiable if paired option is\nselected.Not required/ignored when unpaired test is\nselected.")), ToolInput(tag="in_summaries", input_type=File(optional=True), prefix="--summaries", doc=InputDocumentation(doc="Summaries file name. TSV format.")), ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Flags file. TSV format.")), ToolInput(tag="in_volcano", input_type=String(optional=True), prefix="--volcano", doc=InputDocumentation(doc="Volcano plot. PDF Format.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ttest_Py_V0_1_0().translate("wdl", allow_empty_container=True)

