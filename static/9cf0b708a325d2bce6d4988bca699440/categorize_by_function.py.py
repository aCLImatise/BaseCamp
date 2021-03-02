from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Categorize_By_Function_Py_V0_1_0 = CommandToolBuilder(tool="categorize_by_function.py", base_command=["categorize_by_function.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--ignore", doc=InputDocumentation(doc="Ignore the comma separated list of names. For\ninstance, specifying\n--ignore_unknown=unknown,unclassified will ignore\nthose labels while collapsing. The default is to not\nignore anything. [default: none]")), ToolInput(tag="in_format_tab_delimited", input_type=Boolean(optional=True), prefix="--format_tab_delimited", doc=InputDocumentation(doc="output the predicted metagenome table in tab-delimited\nformat [default: False]")), ToolInput(tag="in_input_fp", input_type=String(optional=True), prefix="--input_fp", doc=InputDocumentation(doc="the predicted metagenome table [REQUIRED]")), ToolInput(tag="in_output_fp", input_type=String(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="the resulting table [REQUIRED]")), ToolInput(tag="in_metadata_category", input_type=String(optional=True), prefix="--metadata_category", doc=InputDocumentation(doc="the metadata category that describes the hierarchy\n(e.g. KEGG_Pathways, COG_Category, etc.). Note: RFAM\npredictions can not be collapsed because there are no\ncategories to group them into. [REQUIRED]")), ToolInput(tag="in_level", input_type=Int(optional=True), prefix="--level", doc=InputDocumentation(doc="the level in the hierarchy to collapse to. A value of\n0 is not allowed, a value of 1 is the highest level,\nand any higher value nears the leaves of the\nhierarchy. For instance, if the hierarchy contains 4\nlevels, specifying 3 would collapse at one level above\nbeing fully specified. [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Categorize_By_Function_Py_V0_1_0().translate("wdl", allow_empty_container=True)

