from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Anvi_Export_Misc_Data_V0_1_0 = CommandToolBuilder(tool="anvi_export_misc_data", base_command=["anvi-export-misc-data"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).")), ToolInput(tag="in_target_data_table", input_type=String(optional=True), prefix="--target-data-table", doc=InputDocumentation(doc="The target table is the table you are interested in\naccessing. Currently it can be 'items','layers', or\n'layer_orders'. Please see most up-to-date online\ndocumentation for more information.")), ToolInput(tag="in_target_data_group", input_type=String(optional=True), prefix="--target-data-group", doc=InputDocumentation(doc="Data group to focus. Anvi'o misc data tables support\nassociating a set of data keys with a data group. If\nyou have no idea what this is, then probably you don't\nneed it, and anvi'o will take care of you. Note: this\nflag is IRRELEVANT if you are working with additional\norder data tables.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_Misc_Data_V0_1_0().translate("wdl", allow_empty_container=True)

