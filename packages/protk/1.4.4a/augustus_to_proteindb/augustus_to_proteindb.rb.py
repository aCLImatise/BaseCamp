from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Augustus_To_Proteindb_Rb_V0_1_0 = CommandToolBuilder(tool="augustus_to_proteindb.rb", base_command=["augustus_to_proteindb.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file. \")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Include CDS Coordinates [false]")), ToolInput(tag="in_augustus_dot_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file. \"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augustus_To_Proteindb_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

