from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Megalodon_Extras_Calibrate_Merge_Modified_Bases_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_calibrate_merge_modified_bases", base_command=["megalodon_extras", "calibrate", "merge_modified_bases"], inputs=[ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz")), ToolInput(tag="in_overwrite", input_type=File(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite --out-filename if it exists."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz")), ToolOutput(tag="out_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Overwrite --out-filename if it exists."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Calibrate_Merge_Modified_Bases_V0_1_0().translate("wdl", allow_empty_container=True)

