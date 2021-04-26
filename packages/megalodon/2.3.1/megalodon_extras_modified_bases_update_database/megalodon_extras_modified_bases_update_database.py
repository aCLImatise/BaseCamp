from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Megalodon_Extras_Modified_Bases_Update_Database_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_update_database", base_command=["megalodon_extras", "modified_bases", "update_database"], inputs=[ToolInput(tag="in_new_db", input_type=Directory(optional=True), prefix="--new-db", doc=InputDocumentation(doc="Output data base name. Should replace\nper_read_modified_base_calls.db in megalodon results\ndirectory in order to process further. Default:\nmegalodon_mods.db\n"))], outputs=[ToolOutput(tag="out_new_db", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_new_db", type_hint=File()), doc=OutputDocumentation(doc="Output data base name. Should replace\nper_read_modified_base_calls.db in megalodon results\ndirectory in order to process further. Default:\nmegalodon_mods.db\n"))], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Update_Database_V0_1_0().translate("wdl")

