from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Extract_Shared_Or_Unique_Otuids_Py_V0_1_0 = CommandToolBuilder(tool="extract_shared_or_unique_otuids.py", base_command=["extract_shared_or_unique_otuids.py"], inputs=[ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Provide specific text to prepend the output file\nnames. By default, the 'unique' will be added in front\nof output filenames, for uniques calculations only.")), ToolInput(tag="in_reverse", input_type=File(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Get shared OTUIDs among all unique combinations of\ngroups and write out the results to path provided to\nthis option.\n")), ToolInput(tag="in_input_biom_fp", input_type=String(), position=0, doc=InputDocumentation(doc="BIOM format file path.")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Path to save category unique OTUIDs.")), ToolInput(tag="in_mapping_file", input_type=String(), position=2, doc=InputDocumentation(doc="Mapping file with category information.")), ToolInput(tag="in_category_column", input_type=String(), position=3, doc=InputDocumentation(doc="Column in mapping file specifying the\ncategory/condition of all samples."))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Provide specific text to prepend the output file\nnames. By default, the 'unique' will be added in front\nof output filenames, for uniques calculations only.")), ToolOutput(tag="out_reverse", output_type=File(optional=True), selector=InputSelector(input_to_select="in_reverse", type_hint=File()), doc=OutputDocumentation(doc="Get shared OTUIDs among all unique combinations of\ngroups and write out the results to path provided to\nthis option.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Shared_Or_Unique_Otuids_Py_V0_1_0().translate("wdl", allow_empty_container=True)

