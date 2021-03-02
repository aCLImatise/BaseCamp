from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Convertorganismid_Pl_File_Output_Id_Type_V0_1_0 = CommandToolBuilder(tool="convertOrganismID.pl_file_output ID type", base_command=["convertOrganismID.pl", "file", "output ID type"], inputs=[ToolInput(tag="in_convert_organ_is_middot_pl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_current_organs_is_m", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_organism", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_id_type", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertorganismid_Pl_File_Output_Id_Type_V0_1_0().translate("wdl", allow_empty_container=True)

