from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Biom_Normalize_Table_V0_1_0 = CommandToolBuilder(tool="biom_normalize_table", base_command=["biom", "normalize-table"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input BIOM table  [required]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="An output file-path")), ToolInput(tag="in_relative_abund", input_type=Boolean(optional=True), prefix="--relative-abund", doc=InputDocumentation(doc="convert table to relative abundance")), ToolInput(tag="in_presence_absence", input_type=Boolean(optional=True), prefix="--presence-absence", doc=InputDocumentation(doc="convert table to presence/absence")), ToolInput(tag="in_axis", input_type=Boolean(optional=True), prefix="--axis", doc=InputDocumentation(doc="[sample|observation]\nThe axis to normalize over"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="An output file-path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Normalize_Table_V0_1_0().translate("wdl", allow_empty_container=True)

