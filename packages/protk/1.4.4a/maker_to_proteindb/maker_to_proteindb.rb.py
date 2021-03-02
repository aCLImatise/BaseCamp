from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Maker_To_Proteindb_Rb_V0_1_0 = CommandToolBuilder(tool="maker_to_proteindb.rb", base_command=["maker_to_proteindb.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Run in debug mode [false]")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Include CDS Coordinates [false]")), ToolInput(tag="in_prot_fast_a", input_type=File(optional=True), prefix="--prot-fasta", doc=InputDocumentation(doc="A fasta file \\ncontaining protein sequences for each transcript\n")), ToolInput(tag="in_maker_dot_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker_To_Proteindb_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

