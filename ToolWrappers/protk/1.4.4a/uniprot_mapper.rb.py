from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Uniprot_Mapper_Rb_V0_1_0 = CommandToolBuilder(tool="uniprot_mapper.rb", base_command=["uniprot_mapper.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_id_column", input_type=Int(optional=True), prefix="--id-column", doc=InputDocumentation(doc="Specify a column for ids (default is column 1)")), ToolInput(tag="in_to_id", input_type=String(optional=True), prefix="--to-id", doc=InputDocumentation(doc="Specify an ID to output. Can be used multiple times.")), ToolInput(tag="in_input_file_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_from_id_type", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniprot_Mapper_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

