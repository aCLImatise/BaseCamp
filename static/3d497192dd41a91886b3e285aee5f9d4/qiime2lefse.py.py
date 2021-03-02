from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Qiime2Lefse_Py_V0_1_0 = CommandToolBuilder(tool="qiime2lefse.py", base_command=["qiime2lefse.py"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc="[INPUT_FILE]     the Qiime OTU table file [ stdin if not present ]")), ToolInput(tag="in_md", input_type=Boolean(optional=True), prefix="--md", doc=InputDocumentation(doc="[METADATA_FILE]  the Qiime OTU table file [ only OTU table without\nmetadata if not present ]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="[OUTPUT_FILE]   the output file [stdout if not present]")), ToolInput(tag="in_attribute_attribute_use_class", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="attribute    the attribute to use as class")), ToolInput(tag="in_attribute_use_subclass", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="attribute\nthe attribute to use as subclass")), ToolInput(tag="in_attribute_attribute_use_subject", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="attribute  the attribute to use as subject")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_metadata_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="[OUTPUT_FILE]   the output file [stdout if not present]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qiime2Lefse_Py_V0_1_0().translate("wdl", allow_empty_container=True)

