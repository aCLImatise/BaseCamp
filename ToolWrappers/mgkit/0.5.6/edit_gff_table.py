from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Edit_Gff_Table_V0_1_0 = CommandToolBuilder(tool="edit_gff_table", base_command=["edit-gff", "table"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Attribute used to search the table defaults to\n`uid`")), ToolInput(tag="in_attribute", input_type=String(optional=True), prefix="--attribute", doc=InputDocumentation(doc="Attribute to add/change  [required]")), ToolInput(tag="in_only_edited", input_type=Boolean(optional=True), prefix="--only-edited", doc=InputDocumentation(doc="Only output edited annotations")), ToolInput(tag="in_skip_rows", input_type=Int(optional=True), prefix="--skip-rows", doc=InputDocumentation(doc="Number of rows to skip at the start of the file")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="Fields separator, default to `TAB`")), ToolInput(tag="in_comment", input_type=File(optional=True), prefix="--comment", doc=InputDocumentation(doc="Characters for comments in file (eg '#').\ndefaults to None")), ToolInput(tag="in_table_file", input_type=File(optional=True), prefix="--table-file", doc=InputDocumentation(doc="[required]")), ToolInput(tag="in_key_index", input_type=Int(optional=True), prefix="--key-index", doc=InputDocumentation(doc="Which field in the table is the key value\n[default: 0]")), ToolInput(tag="in_attr_index", input_type=Int(optional=True), prefix="--attr-index", doc=InputDocumentation(doc="Which field in the table is the attribute value\n[default: 1]")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Gff_Table_V0_1_0().translate("wdl")

