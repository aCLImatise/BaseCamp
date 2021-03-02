from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Mascot_To_Pepxml_Rb_V0_1_0 = CommandToolBuilder(tool="mascot_to_pepxml.rb", base_command=["mascot_to_pepxml.rb"], inputs=[ToolInput(tag="in_replace_output", input_type=File(optional=True), prefix="--replace-output", doc=InputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]")), ToolInput(tag="in_enzyme", input_type=String(optional=True), prefix="--enzyme", doc=InputDocumentation(doc="Enzyme [Trypsin]")), ToolInput(tag="in_short_id", input_type=Boolean(optional=True), prefix="--shortid", doc=InputDocumentation(doc="Use short protein id as per Mascot result (default uses full protein ids in fasta file) [false]")), ToolInput(tag="in_file_two_dot_dat", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_replace_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_replace_output", type_hint=File()), doc=OutputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mascot_To_Pepxml_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

