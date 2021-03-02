from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Seq_To_First_Iso_V0_1_0 = CommandToolBuilder(tool="seq_to_first_iso", base_command=["seq-to-first-iso"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="name of output file")), ToolInput(tag="in_unlabelled_aa", input_type=String(optional=True), prefix="--unlabelled-aa", doc=InputDocumentation(doc="amino acids with default abundance")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file_name", input_type=String(), position=0, doc=InputDocumentation(doc="file to parse in .tsv format")), ToolInput(tag="in_sequence_col_name", input_type=String(), position=1, doc=InputDocumentation(doc="column name with sequences")), ToolInput(tag="in_charge_col_name", input_type=String(), position=2, doc=InputDocumentation(doc="column name with charges"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="name of output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_To_First_Iso_V0_1_0().translate("wdl", allow_empty_container=True)

